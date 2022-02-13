-- Getting the information needed from users and follows
-- Since we have 2 types of users we must include the users table twice and import it as it's type
-- We make 2 inner joins to associate the follower with the followee (with all the information)
-- We then filter by follower username and followee username to trim all the information from this table
-- We finally filter the table to only users who are following Yoshua
-- Inner Query
SELECT follower.username as follower, followed.username as followed
FROM users as followed, users as follower, follows
WHERE follower.userid = follows.followerid
    AND followed.userid = follows.followeeid
    AND followed.username = 'Yoshua Bengio';

-- Using the Table above and the same methodology we make another innerjoin on a follows table
-- We associate again the follower to the followee with all their information
-- We finally filter by column of the inner query by follower
-- This will yield the followers of the follower of Yoshua
-- We want to finally select only the username and the city of the followers.
-- Nested Query
SELECT follower.username, follower.city
FROM (
    SELECT follower.username as follower, followed.username as followed
    FROM users as followed, users as follower, follows
    WHERE follower.userid = follows.followerid
        AND followed.userid = follows.followeeid
        AND followed.username = 'Yoshua Bengio') AS temp, users as follower, users as followed, follows
WHERE follower.userid = follows.followerid
    AND followed.userid = follows.followeeid
    AND followed.username = temp.follower;
