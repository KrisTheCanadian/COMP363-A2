CREATE TABLE Users (
userId SERIAL PRIMARY KEY ,
userName VARCHAR ,
city VARCHAR ,
lastLogin TIMESTAMP );
CREATE TABLE Tweets (
tweetId SERIAL PRIMARY KEY ,
userId INT NOT NULL REFERENCES Users ( userId ) ,
tweetTimestamp TIMESTAMP NOT NULL ,
tweetText VARCHAR );
CREATE TABLE Retweets (
userId INT REFERENCES Users ( userId ) ,
tweetId INT REFERENCES Tweets ( tweetId ) ,
retweetTimestamp TIMESTAMP ,
PRIMARY KEY ( userId , tweetId , retweetTimestamp ));
CREATE TABLE TweetTags (
tweetId INT ,
hashtag VARCHAR CHECK ( hashtag LIKE '#%') ,
PRIMARY KEY ( tweetId , hashtag ));
CREATE TABLE Follows (
followerId INT REFERENCES Users ( userId ) ,
followeeId INT REFERENCES Users ( userId ) ,
PRIMARY KEY ( followerId , followeeId ));