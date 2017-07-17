-- run this file with psql -a -f books.sql

CREATE DATABASE library;

\c library;

CREATE TABLE books (id SERIAL PRIMARY KEY,
title VARCHAR(255), num-of-pages INT,
genre VARCHAR(255), author VARCHAR(255),
author INT);

CREATE TABLE authors (id SERIAL PRIMARY KEY,
name VARCHAR(255), age INT, gender VARCHAR(255));
