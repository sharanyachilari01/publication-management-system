-- Publications per faculty
SELECT
    f.full_name,
    COUNT(fp.publication_id) AS publication_count
FROM Faculty f
JOIN Faculty_Publication fp ON f.faculty_id = fp.faculty_id
GROUP BY f.full_name
ORDER BY publication_count DESC;

-- Publications per faculty per year
SELECT
    f.full_name,
    p.year,
    COUNT(*) AS publications
FROM Faculty f
JOIN Faculty_Publication fp ON f.faculty_id = fp.faculty_id
JOIN Publication p ON fp.publication_id = p.publication_id
GROUP BY f.full_name, p.year
ORDER BY f.full_name, p.year DESC;

-- Total citations per faculty
SELECT
    f.full_name,
    SUM(p.citation_count) AS total_citations
FROM Faculty f
JOIN Faculty_Publication fp ON f.faculty_id = fp.faculty_id
JOIN Publication p ON fp.publication_id = p.publication_id
GROUP BY f.full_name
ORDER BY total_citations DESC;

-- Publications after 2020
SELECT
    f.full_name,
    p.title,
    p.year
FROM Faculty f
JOIN Faculty_Publication fp ON f.faculty_id = fp.faculty_id
JOIN Publication p ON fp.publication_id = p.publication_id
WHERE p.year > 2020
ORDER BY p.year DESC;

-- Total records fetched per faculty
SELECT
    f.full_name,
    SUM(fl.total_records_fetched) AS total_records
FROM Faculty f
LEFT JOIN Fetch_Log fl ON f.faculty_id = fl.faculty_id
GROUP BY f.full_name
ORDER BY total_records DESC;
