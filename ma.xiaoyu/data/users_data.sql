CREATE TABLE IF NOT EXISTS `track_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_users VALUES
(1,'Bobbie Hooper','user1','user1@gmail.com',md5('pass'),'https://via.placeholder.com/400/989/fff/?text=user1','2022-04-04 01:11:23'),
(2,'Margret Raymond','user2','user2@gmail.com',md5('pass'),'https://via.placeholder.com/400/869/fff/?text=user2','2022-01-03 09:27:59'),
(3,'Moreno Peters','user3','user3@gmail.com',md5('pass'),'https://via.placeholder.com/400/925/fff/?text=user3','2022-03-31 05:34:35'),
(4,'Sellers Ross','user4','user4@gmail.com',md5('pass'),'https://via.placeholder.com/400/814/fff/?text=user4','2022-02-09 06:54:04'),
(5,'Lauren Berger','user5','user5@gmail.com',md5('pass'),'https://via.placeholder.com/400/756/fff/?text=user5','2022-02-27 03:36:36'),
(6,'England Duncan','user6','user6@gmail.com',md5('pass'),'https://via.placeholder.com/400/741/fff/?text=user6','2022-02-01 07:02:56'),
(7,'Marietta Good','user7','user7@gmail.com',md5('pass'),'https://via.placeholder.com/400/953/fff/?text=user7','2022-01-13 05:27:31'),
(8,'Alba Cobb','user8','user8@gmail.com',md5('pass'),'https://via.placeholder.com/400/975/fff/?text=user8','2022-03-31 10:07:21'),
(9,'Lopez Madden','user9','user9@gmail.com',md5('pass'),'https://via.placeholder.com/400/922/fff/?text=user9','2022-03-23 02:09:31'),
(10,'Marcy Mullins','user10','user10@gmail.com',md5('pass'),'https://via.placeholder.com/400/951/fff/?text=user10','2022-01-02 04:06:32');