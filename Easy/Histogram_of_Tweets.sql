-- This is the same question as problem #6 in the SQL Chapter of Ace the Data Science Interview!
-- Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022.
-- Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.
-- In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.
select 
  tc,
 count(user_id)
FROM(
SELECT t.user_id,count(t.tweet_id) as tc FROM tweets t
WHERE EXTRACT(YEAR FROM t.tweet_date) = 2022
group by t.user_id
)as total
GROUP BY tc;