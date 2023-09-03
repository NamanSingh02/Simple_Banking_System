create database bank_data;
use bank_data;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- creating table transaction
CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- creating table user
CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- inserting data into user

INSERT INTO `user` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Naman', 'naman@gmail.com', 100000),
(2, 'Kartik', 'kartik@gmail.com', 2000),
(3, 'Zubin', 'zubin@gmail.com', 50000),
(4, 'Pranad', 'pp@gmail.com', 1000),
(5, 'Vineet', 'vineet@gmail.com', 4040),
(6, 'Zaid', 'zaid@gmail.com', 30050),
(7, 'Mikael', 'mikael@gmail.com', 5000),
(8, 'Kritik', 'kritik@gmail.com', 40000),
(9, 'Devansh', 'devansh@gmail.com', 13000),
(10, 'Dheeman', 'dheeman@gmail.com', 50000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;
