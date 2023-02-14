-- create the databases
CREATE DATABASE IF NOT EXISTS `testdb`;

GRANT ALL PRIVILEGES ON `testdb`.* TO 'tester'@'%';

COMMIT;