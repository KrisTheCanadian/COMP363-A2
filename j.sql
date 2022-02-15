-- People that Ian Goodfellow follows
-- INNER QUERY
-- SELECT followed.userid, followed.username
-- FROM follows, users as followers, users as followed
-- WHERE followers.username = 'Ian Goodfellow'
-- AND follows.followerid = followers.userid
-- AND followed.userid = follows.followeeid;

-- NESTED QUERY
-- ANSWER:
SELECT DISTINCT followers.username, followers.city
    FROM (SELECT followed.userid, followed.username
    FROM follows, users as followers, users as followed
    WHERE followers.username = 'Ian Goodfellow'
    AND follows.followerid = followers.userid
    AND followed.userid = follows.followeeid) as f, follows, users as followers, users as followed
WHERE followed.userid = follows.followeeid
AND follows.followerid = followers.userid
AND followed.userid = f.userid;
