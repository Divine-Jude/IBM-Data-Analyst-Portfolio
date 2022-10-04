SELECT 
    *
FROM
    filmlocations;

SELECT 
    Director, Title, `Release Year`
FROM
    filmlocations
ORDER BY Director;

SELECT 
    COUNT(Title)
FROM
    filmlocations
WHERE
    `Release Year` BETWEEN 1947 AND 1995;
    
# sub-queries table expressions
SELECT
    *
FROM
    (select Title, `Release Year`, Director from filmlocations) AS details
