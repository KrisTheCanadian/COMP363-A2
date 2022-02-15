SELECT users.username AS users
FROM users
WHERE users.username NOT IN (
    SELECT users.username
    FROM users, retweets, tweets
    WHERE retweets.tweetid = tweets.tweetid
    AND tweets.userid = users.userid);