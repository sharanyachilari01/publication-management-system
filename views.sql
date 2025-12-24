CREATE OR REPLACE VIEW Faculty_Publication_Report AS
SELECT
    f.full_name AS Faculty,
    p.title AS Title,
    p.journal_name AS Journal,
    p.volume AS Volume,
    p.number AS Issue,
    p.pages AS Pages,
    p.year AS Year,
    p.publisher AS Publisher,
    p.citation_count AS Citations,
    p.doi_link AS DOI,
    p.abstract AS Abstract,
    a.author_name AS Author
FROM Faculty f
JOIN Faculty_Publication fp ON f.faculty_id = fp.faculty_id
JOIN Publication p ON fp.publication_id = p.publication_id
LEFT JOIN Publication_Author pa ON p.publication_id = pa.publication_id
LEFT JOIN Author a ON pa.author_id = a.author_id;
