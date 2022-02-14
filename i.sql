SELECT retweeters.username, count(retweets.tweetid) as count
FROM retweets, users as retweeters, tweets, users as tweeter
WHERE tweeter.username = 'Andrew Ng'
AND tweets.userid = tweeter.userid
AND retweets.tweetid = tweets.tweetid
AND retweeters.userid = retweets.userid
GROUP BY retweeters.username
ORDER BY count DESC
LIMIT 10;