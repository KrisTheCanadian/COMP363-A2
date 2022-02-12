insert into users values
(1,'Ahmed Smith', 'MTL', '2020-01-01 14:01:56-08'),
(2,'Yoshua Bengio', 'NY' ,'2020-02-11 10:11:26-08'),
(3,'Celine Tran', 'MTL', '2019-11-08 21:41:16-08'),
(4,'Sam Junior', 'MTL', '2021-09-16 06:51:26-08'),
(5,'Imen Tanen', 'Tunis', '2021-11-29 11:41:26-08'),
(6,'Geoffrey Hinton', 'Paris', '2021-12-19 11:41:26-08'),
(7,'Andrew Ng', 'Frankfurt', '2022-01-19 14:41:26-08'),
(8,'Ian Goodfellow', 'Madrid', '2021-11-29 11:41:26-08'),
(9,'Betty Summers', 'Paris', '2021-11-29 11:41:26-08'),
(10,'Molly Kramer', 'MTL', '2021-11-29 11:41:26-08'),
(11,'Jessie Salinas', 'NY', '2021-11-29 11:41:26-08'),
(12,'Rhonda Ferguson', 'NY', '2021-11-29 11:41:26-08');

insert into follows values
(1,4),
(2,4),
(5,8),
(5,3),
(4,2),
(8,2),
(3,2),
(6,1),
(6,7),
(8,5),
(3,5),
(12,5),
(6,11),
(6,10);

insert into tweets values
(1,1, '2019-01-09 14:41:26-08', 'Who cares'),
(2,1, '2005-05-29 14:41:26-08', 'hello'),
(3,3, '2000-11-12 14:41:26-08', 'sunny'),
(4,7, '2008-09-19 14:41:26-08', 'flowers'),
(5,7, '2007-03-14 14:41:26-08', '100'),
(6,3, '2006-02-09 14:41:26-08', 'random text'),
(7,9, '2008-02-09 14:41:26-08', 'tweet'),
(8,1, '2011-02-09 14:41:26-08', '99'),
(9,3, '2001-02-09 14:41:26-08', 'text'),
(10,4, '2021-02-09 14:41:26-08', 'snow'),
(11,5, '2014-02-09 14:41:26-08', 'shoes'),
(12,2, '2015-02-09 14:41:26-08', 'computer'),
(13,3, '2017-02-09 14:41:26-08', 'please'),
(14,9, '2019-02-09 14:41:26-08', 'stop'),
(15,10, '2010-02-09 14:41:26-08', 'that'),
(16,11, '2020-02-09 14:41:26-08', 'Andrew'),
(17,12, '2020-02-09 14:41:26-08', 'Ng'),
(18,1, '2021-02-09 14:41:26-08', 'text'),
(19,1, '2022-02-09 14:41:26-08', 'doesnt'),
(20,7, '2019-02-09 14:41:26-08', 'matter'),
(21,7, '2022-02-09 14:41:26-08', 'why'),
(22,9, '2021-02-09 14:41:26-08', 'do'),
(23,6, '2021-02-09 14:41:26-08', 'hello'),
(24,8, '2021-02-09 14:41:26-08', 'bonjour'),
(25,8, '2021-02-09 14:41:26-08', 'last'),
(26,8, '2021-02-09 14:41:26-08', 'one');

INSERT INTO retweets VALUES
(1, 3, '2002-01-19 14:41:26-08'),
(6, 6, '2007-01-19 14:41:26-08'),
(8, 6, '2011-01-19 14:41:26-08'),
(8, 2, '2017-01-19 14:41:26-08'),
(5, 4, '2027-01-19 14:41:26-08'),
(8, 4, '2012-01-19 14:41:26-08'),
(8, 20, '2017-01-19 14:41:26-08'),
(8, 21, '2021-01-19 14:41:26-08'),
(2, 4, '2017-01-19 14:41:26-08'),
(2, 5, '2027-01-19 14:41:26-08'),
(3, 20, '2011-01-19 14:41:26-08'),
(3, 21, '2017-01-19 14:41:26-08'),
(5, 20, '2027-01-19 14:41:26-08'),
(5, 21, '2012-01-19 14:41:26-08'),
(1, 4, '2017-01-19 14:41:26-08'),
(1, 21, '2021-01-19 14:41:26-08'),
(1, 5, '2017-01-19 14:41:26-08'),
(12, 5, '2027-01-19 14:41:26-08'),
(12, 5, '2011-01-19 14:41:26-08'),
(11, 21, '2017-01-19 14:41:26-08'),
(11, 20, '2027-01-19 14:41:26-08'),
(4, 5, '2027-01-19 14:41:26-08'),
(4, 4, '2011-01-19 14:41:26-08'),
(4, 20, '2017-01-19 14:41:26-08'),
(6, 21, '2027-01-19 14:41:26-08'),
(6, 20, '2012-01-19 14:41:26-08'),
(6, 5, '2017-01-19 14:41:26-08'),
(10, 5, '2021-01-19 14:41:26-08'),
(10, 4, '2017-01-19 14:41:26-08'),
(9, 21, '2027-01-19 14:41:26-08');

insert into tweettags values
(1, '#MachineLearning'),
(2, '#MachineLearning'),
(3, '#MachineLearning'),
(4, '#MachineLearning'),
(5, '#MachineLearning'),
(6, '#MachineLearning'),
(26, '#soen363'),
(1, '#soen363'),
(20, '#soen363'),
(19, '#soen363'),
(10, '#soen363'),
(8, '#soen363'),
(6, '#soen363'),
(5, '#soen363'),
(1, '#cu'),
(26, '#cu'),
(10, '#cu'),
(17, '#cu'),
(3, '#cu'),
(21, '#mtl'),
(22, '#mtl'),
(26, '#mtl'),
(9, '#mtl'),
(11, '#mtl'),
(5, '#mtl'),
(1, '#iPhone11'),
(26, '#iPhone11'),
(19, '#iPhone11'),
(20, '#iPhone11'),
(4, '#DBApps'),
(1, '#DBApps'),
(26, '#DBApps'),
(19, '#DBApps'),
(16, '#DBApps'),
(13, '#DBApps'),
(6, '#iPhone11');
