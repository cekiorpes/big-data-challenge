SELECT * FROM vine_table;

SELECT star_rating, COUNT(star_rating) AS Frequency
FROM vine_table
WHERE vine = 'Y'
GROUP BY star_rating
ORDER BY star_rating DESC;

SELECT star_rating, COUNT(star_rating) AS Frequency
FROM vine_table
WHERE vine = 'N'
GROUP BY star_rating
ORDER BY star_rating DESC;

SELECT AVG(star_rating)
FROM vine_table
WHERE vine = 'Y'
   AND helpful_votes > 2;

SELECT AVG(star_rating)
FROM vine_table
WHERE vine = 'N'
   AND helpful_votes > 2;

SELECT COUNT(review_id)
FROM vine_table
WHERE vine = 'Y';

SELECT COUNT(review_id)
FROM vine_table
WHERE vine = 'N';

SELECT COUNT(helpful_votes)
FROM vine_table
WHERE vine = 'Y'
   AND helpful_votes > 0;

SELECT COUNT(helpful_votes)
FROM vine_table
WHERE vine = 'N'
   AND helpful_votes > 0;
   
SELECT SUM(helpful_votes)
FROM vine_table
WHERE vine = 'Y';

SELECT SUM(helpful_votes)
FROM vine_table
WHERE vine = 'N';