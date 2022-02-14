-- Query all users who were retweeted once
-- Check this table will all users that is not part of that table
SELECT DISTINCT users.username
FROM users, tweets
WHERE users.userid = tweets.userid
AND tweetid NOT IN (SELECT retweets.tweetid FROM retweets);