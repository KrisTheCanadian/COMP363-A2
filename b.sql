-- We are doing nested query.
-- The inner query is essentially making a innerjoin between users, tweets and tweettags
-- finally it orders them by username and saves it as a temporary table
-- we use all this data in the outer query and select the username and the count of the hashtag
-- since we're using the count function, we must group by a certain column, in this case it's usernames
-- we finally finish off the query by ordering the table by count in descending
-- this essentially makes it so that the highest count is the first row
SELECT username, COUNT(hashtag) as count FROM
    (SELECT DISTINCT userName, hashtag
    FROM  users U, tweettags, tweets
    WHERE U.userid = tweets.userid
    AND tweettags.tweetid = tweets.tweetid
    ORDER BY userName) as temp
GROUP BY username
ORDER BY count DESC;