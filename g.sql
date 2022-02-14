SELECT followers.username, COUNT(t.tweettext)as tweets
FROM follows
INNER JOIN users as followers ON follows.followerid=followers.userid
INNER JOIN users as followed ON follows.followeeid=followed.userid
LEFT OUTER JOIN tweets t on followed.userid = t.userid AND followers.lastlogin < t.tweettimestamp
WHERE t.tweetid IS NOT NULL
GROUP BY followers.username
ORDER BY tweets DESC
LIMIT 5;