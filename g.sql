SELECT followers.username, COUNT(concat(t.tweettext, t2.tweettext)) as tweets
FROM follows
INNER JOIN users as followers ON follows.followerid=followers.userid
INNER JOIN users as followed ON follows.followeeid=followed.userid
LEFT OUTER JOIN tweets t on followed.userid = t.userid AND followers.lastlogin < t.tweettimestamp
LEFT OUTER JOIN retweets r on followed.userid = r.userid AND followers.lastlogin < r.retweettimestamp
LEFT OUTER JOIN tweets t2 on r.tweetid = t2.tweetid
WHERE ((t.tweetid IS NOT NULL) OR (t2.tweetid IS NOT NULL) )
GROUP BY followers.username
ORDER BY tweets DESC
LIMIT 5;