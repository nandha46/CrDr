truncate table family;
ALTER TABLE `family` ADD PRIMARY KEY(`id`);
ALTER TABLE `family` CHANGE `id` `id` INT(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `subjects` CHANGE `standardid` `standardid` INT(11) NULL COMMENT 'aka ClssId';
drop table stu_strengthes;
ALTER TABLE `rooms` ADD `seating_type` VARCHAR(10) NULL AFTER `room_type`, ADD `no_of_seats` INT NOT NULL DEFAULT '0' AFTER `seating_type`, ADD `bench_capacity` TINYINT NOT NULL DEFAULT '0' AFTER `no_of_seats`;
ALTER TABLE `rooms` CHANGE `max_capacity` `max_capacity` INT NOT NULL DEFAULT '0', CHANGE `available_capacity` `available_capacity` INT NOT NULL DEFAULT '0';