-- We are selecting users from the same table but defining them as tweeters and retweeters respectively
-- We are making an inner join on the retweeter's table with the retweets table
-- we are making another inner join with the tweeters and the tweets table
-- we are finalizing all the information on that table by adding the tweettags by doing a last inner join
-- We finally finish by checking if the hashtag is equal to '#MachineLearning'
-- For all those hashtags, we make sure they are before the year 2008
SELECT U2.userName as tweeter, U.userName as retweeter
FROM  users U, users U2, retweets, tweettags, tweets
WHERE U.userid = retweets.userid
    AND U2.userid = tweets.userid
    AND tweettags.tweetid = retweets.tweetid
    AND tweettags.tweetid = tweets.tweetid
    AND hashtag = '#MachineLearning'
    AND EXTRACT(year FROM retweettimestamp) < 2008