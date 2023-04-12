SET @old_autocommit=@@autocommit;

DROP DATABASE IF EXISTS `test`;

CREATE DATABASE `test` DEFAULT CHARACTER SET utf8mb4;

USE `test`;

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

set autocommit=0;
INSERT INTO `user` VALUES (1,'テスト太郎');
INSERT INTO `user` VALUES (2,'hoge太郎');
commit;
