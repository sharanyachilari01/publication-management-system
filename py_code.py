import mysql.connector
import pandas as pd
from serpapi import GoogleSearch
import time, random

# =========================
# CONFIGURATION
# =========================
API_KEY = " "  # Replace with your API key
DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "password",
    "database": "FacultyPublicationDB"
}

# =========================
# CONNECT TO DATABASE
# =========================
def connect_db():
    return mysql.connector.connect(**DB_CONFIG)

# =========================
# FETCH PUBLICATIONS FROM SERPAPI
# =========================
def fetch_publications(scholar_id, limit=5):
    params = {
        "engine": "google_scholar_author",
        "author_id": scholar_id,
        "api_key": API_KEY
    }
    search = GoogleSearch(params)
    results = search.get_dict()

    publications = []

    if "articles" in results:
        for article in results["articles"][:limit]:
            # Handle authors safely
            authors_data = article.get("authors", [])
            authors_list = []
            if isinstance(authors_data, list):
                for a in authors_data:
                    if isinstance(a, dict):
                        authors_list.append({
                            "name": a.get("name"),
                            "affiliation": a.get("affiliation")
                        })
            # if authors_data is string or empty, we just skip it

            publications.append({
                "title": article.get("title"),
                "year": article.get("year"),
                "citation_count": article.get("cited_by", {}).get("value", 0),
                "journal_name": article.get("publication"),
                "volume": article.get("volume"),
                "number": article.get("issue"),
                "pages": article.get("pages"),
                "publisher": article.get("publisher"),
                "doi_link": article.get("doi"),
                "abstract": article.get("snippet"),
                "authors": authors_list
            })
    return publications

# =========================
# MAIN FUNCTION
# =========================
def main():
    df = pd.read_csv("/Users/sharanya/Desktop/faculty_data.csv")  # Adjust path
    conn = connect_db()
    cursor = conn.cursor()

    print(f"✅ Connected to DB — {len(df)} faculty found")

    for i, row in df.head(10).iterrows():  # limit to 10 faculty
        name = row['full_name']
        faculty_id = row['faculty_id']
        scholar_link = row['scholar_link']

        # Extract scholar ID
        scholar_id = None
        if "user=" in scholar_link:
            scholar_id = scholar_link.split("user=")[1].split("&")[0]

        if not scholar_id:
            print(f"⚠️ Skipping {name}: Invalid link")
            continue

        print(f"\n🔍 Fetching top 5 publications for: {name}")
        total_fetched = 0

        try:
            publications = fetch_publications(scholar_id, 5)
            for pub in publications:
                # Insert into Publication
                cursor.execute("""
                    INSERT INTO Publication 
                    (title, journal_name, volume, number, pages, year, publisher, citation_count, doi_link, abstract)
                    VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
                """, (
                    pub["title"], pub["journal_name"], pub["volume"], pub["number"], pub["pages"],
                    pub["year"], pub["publisher"], pub["citation_count"], pub["doi_link"], pub["abstract"]
                ))
                pub_id = cursor.lastrowid

                # Insert authors and Publication_Author
                for order, author in enumerate(pub["authors"], start=1):
                    author_name = author.get("name")
                    affiliation = author.get("affiliation")

                    if not author_name:  # skip authors without a name
                        continue

                    # Check if author exists
                    cursor.execute("""
                        SELECT author_id FROM Author WHERE author_name=%s AND affiliation=%s
                    """, (author_name, affiliation))
                    result = cursor.fetchone()
                    if result:
                        author_id = result[0]
                    else:
                        cursor.execute("""
                            INSERT INTO Author (author_name, affiliation) VALUES (%s,%s)
                        """, (author_name, affiliation))
                        author_id = cursor.lastrowid

                    # Link author to publication
                    cursor.execute("""
                        INSERT INTO Publication_Author (publication_id, author_id, author_order)
                        VALUES (%s,%s,%s)
                    """, (pub_id, author_id, order))

                # Link faculty to publication
                is_primary = any(a.get("name") == name for a in pub["authors"])
                cursor.execute("""
                    INSERT INTO Faculty_Publication (faculty_id, publication_id, is_primary_author)
                    VALUES (%s,%s,%s)
                """, (faculty_id, pub_id, is_primary))

                total_fetched += 1

            # Commit everything
            conn.commit()

            # Log fetch
            cursor.execute("""
                INSERT INTO Fetch_Log (faculty_id, total_records_fetched, status, remarks)
                VALUES (%s, %s, %s, %s)
            """, (faculty_id, total_fetched, 'SUCCESS', f"Fetched {total_fetched} publications"))
            conn.commit()

            print(f"✅ Added {total_fetched} publications for {name}")

        except Exception as e:
            print(f"❌ Error fetching for {name}: {e}")
            cursor.execute("""
                INSERT INTO Fetch_Log (faculty_id, total_records_fetched, status, remarks)
                VALUES (%s, %s, %s, %s)
            """, (faculty_id, total_fetched, 'FAILURE', str(e)))
            conn.commit()

        # polite delay
        time.sleep(random.uniform(2, 4))

    cursor.close()
    conn.close()
    print("\n🎯 Data fetching complete!")

# =========================
if __name__ == "__main__":
    main()
