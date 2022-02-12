SELECT U2.userName as tweeter, U.userName as retweeter
FROM  users U, users U2, retweets, tweettags, tweets
WHERE U.userid = retweets.userid
    AND U2.userid = tweets.userid
    AND tweettags.tweetid = retweets.tweetid
    AND tweettags.tweetid = tweets.tweetid
    AND hashtag LIKE '#MachineLearning'
    AND EXTRACT(year FROM retweettimestamp) < 2008