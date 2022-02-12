SELECT username, COUNT(hashtag) as count FROM
    (SELECT DISTINCT userName, hashtag
    FROM  users U, tweettags, tweets
    WHERE U.userid = tweets.userid
    AND tweettags.tweetid = tweets.tweetid
    ORDER BY userName) as temp
GROUP BY username
ORDER BY count DESC