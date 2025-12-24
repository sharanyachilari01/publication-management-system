SELECT * FROM Faculty_Publication_Report;

SELECT * FROM Faculty WHERE faculty_id = '15CSE048';

CALL DeleteFacultyCascade('15CSE048');

SELECT * FROM Faculty WHERE faculty_id = '15CSE048';

SELECT GetTotalCitations('00CSE003') AS TotalCitations;
