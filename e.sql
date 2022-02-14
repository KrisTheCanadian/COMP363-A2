-- In this question we have the same ideology as E except we use INNER JOINS instead of the traditional method.
-- We first get the follows table, then we perform 2 INNER JOINS, one for followers and followed
-- We then filter the followed username to Yoshua
-- We finally select the usernames of both
-- inner query
SELECT followers.username as follower, followed.username as followed
FROM follows
INNER JOIN users as followers ON follows.followerid=followers.userid
INNER JOIN users as followed ON follows.followeeid=followed.userid
WHERE followed.username = 'Yoshua Bengio';

-- We get the inner query above and the follows table
-- We perform the same 2 INNER JOINS as above
-- We change the filter to the followed being equal to the followers of the inner query (followers of Yoshua)
-- This shall return the follower of the followers of Yoshua using INNER JOINS and NESTED Queries
-- nested query
SELECT DISTINCT followers.username, followers.city
FROM (SELECT followers.userid as follower
    FROM follows
    INNER JOIN users as followers ON follows.followerid=followers.userid
    INNER JOIN users as followed ON follows.followeeid=followed.userid
    WHERE followed.username = 'Yoshua Bengio') as temp, follows
INNER JOIN users as followers ON follows.followerid=followers.userid
INNER JOIN users as followed ON follows.followeeid=followed.userid
WHERE followed.userid = temp.follower;