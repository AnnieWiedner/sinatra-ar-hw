-- run this file with psql -a -f migrations.sql

CREATE DATABASE read;

\c read;

CREATE TABLE books (id SERIAL PRIMARY KEY,
title VARCHAR(255), author VARCHAR(255),
num_of_pages INT, genre VARCHAR(255),
image_url VARCHAR(255));

CREATE TABLE libraries (id SERIAL PRIMARY KEY,
name VARCHAR(255), address VARCHAR(255));

CREATE TABLE circulations (id SERIAL PRIMARY KEY,
book_id INT references books(id),
library_id INT references libraries(id));
