CREATE TABLE users (
    `id`    VARCHAR(36) NOT NULL PRIMARY KEY,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    `name`  VARCHAR(25)  NOT NULL
);