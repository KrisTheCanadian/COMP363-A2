-- We are doing an inner join on users (as followers) on the follows userid and the users usersid.
-- This will associate the user row to the follower
-- Similarly we do another inner join but for the followed users
-- We do a full outer join for the tweets and we check to see if the followed userid is equal to the tweet id
-- This will make sure you're receiving the tweets of your followers
-- We also filter the time with the last login, so that you don't receive the tweets twice
-- We do the same thing with retweets
-- We map the tweets to the retweets by
-- We do LEFT OUTER JOINS because we want to make sure we get tweets and retweets's tweets that are on the follows table
-- We are basically doing a FULL OUTER JOIN on tweets t2 and retweets r. We keep the data from tweets table.
SELECT concat(t.tweettext, t2.tweettext) as tweets
FROM follows
INNER JOIN users as followers ON follows.followerid=followers.userid
INNER JOIN users as followed ON follows.followeeid=followed.userid
LEFT OUTER JOIN tweets t on followed.userid = t.userid AND followers.lastlogin < t.tweettimestamp
LEFT OUTER JOIN retweets r on followed.userid = r.userid AND followers.lastlogin < r.retweettimestamp
LEFT OUTER JOIN tweets t2 on r.tweetid = t2.tweetid
WHERE followers.username = 'Geoffrey Hinton' AND ((t.tweetid IS NOT NULL) OR (t2.tweetid IS NOT NULL) );