-- Assume you're given two tables containing data about Facebook Pages and their respective likes (as in "Like a Facebook Page").
-- Write a query to return the IDs of the Facebook pages that have zero likes.
-- The output should be sorted in ascending order based on the page IDs.
SELECT pa.page_id FROM pages pa
LEFT join page_likes pe
on pa.page_id = pe.page_id
where pe.page_id is NULL
order by pa.page_id;