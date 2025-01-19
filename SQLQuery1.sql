CREATE DATABASE database1;

USE database1;

EXEC sp_renamedb 'database1', 'database2'

DROP DATABASE database2;

DROP DATABASE IF EXISTS database2;