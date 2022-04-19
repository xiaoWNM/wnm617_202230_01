CREATE TABLE IF NOT EXISTS `track_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL,
`gender` VARCHAR(MAX) NULL,
`job` VARCHAR(MAX) NULL,
`age` INT NULL
);

INSERT INTO track_users VALUES
(1,'Wilson Humphrey','user1','user1@gmail.com',md5('pass'),'https://via.placeholder.com/400/761/fff/?text=user1','2022-02-17 09:22:16','male','Broker',24),
(2,'Donaldson Gallagher','user2','user2@gmail.com',md5('pass'),'https://via.placeholder.com/400/730/fff/?text=user2','2022-03-19 08:56:11','male','Professor',24),
(3,'Madelyn Bailey','user3','user3@gmail.com',md5('pass'),'https://via.placeholder.com/400/954/fff/?text=user3','2022-03-29 03:04:48','female','Broker',42),
(4,'Stanton Blanchard','user4','user4@gmail.com',md5('pass'),'https://via.placeholder.com/400/810/fff/?text=user4','2022-04-07 07:57:53','male','Broker',44),
(5,'Nichols Rosario','user5','user5@gmail.com',md5('pass'),'https://via.placeholder.com/400/973/fff/?text=user5','2022-02-27 11:59:57','male','Professor',33),
(6,'Regina Battle','user6','user6@gmail.com',md5('pass'),'https://via.placeholder.com/400/922/fff/?text=user6','2022-02-26 05:20:43','female','Entrepreneur',20),
(7,'Bette Stewart','user7','user7@gmail.com',md5('pass'),'https://via.placeholder.com/400/970/fff/?text=user7','2022-03-16 06:37:58','female','Broker',22),
(8,'Salinas Herrera','user8','user8@gmail.com',md5('pass'),'https://via.placeholder.com/400/742/fff/?text=user8','2022-01-14 01:58:07','male','Engineer',60),
(9,'Walker Farrell','user9','user9@gmail.com',md5('pass'),'https://via.placeholder.com/400/927/fff/?text=user9','2022-02-27 02:56:43','male','Professor',47),
(10,'Roxanne Tanner','user10','user10@gmail.com',md5('pass'),'https://via.placeholder.com/400/826/fff/?text=user10','2022-04-03 11:31:00','female','Engineer',40);