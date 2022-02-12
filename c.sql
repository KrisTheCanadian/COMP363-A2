-- We must use retweets and tweetags table to get all the information of the query
-- We first make a inner join on retweets and tweettags on the column tweetid
-- We check to make sure that the year is greater or equal to 2021
-- We then select the hashtag, and the count of the hashtag (as count)
-- Since we're using the COUNT() function, we must group by hashtag
-- we can now order the hashtags by descending order and Limit the return to 1 row
-- This will result in the most retweeted hashtag since 2021.
SELECT hashtag, COUNT(hashtag) as count
FROM retweets, tweettags
WHERE retweets.tweetid = tweettags.tweetid
AND EXTRACT(year FROM retweettimestamp) >= 2021
GROUP BY hashtag
ORDER BY count DESC
LIMIT 1