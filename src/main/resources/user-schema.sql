CREATE TABLE IF NOT EXISTS user (
    id integer identity,
    userId varchar(64) NOT NULL UNIQUE );
