DROP USER IF EXISTS 'jesus'@'localhost';
CREATE USER 'deSoftNews'@'localhost' IDENTIFIED BY 'deSoftNews';
GRANT ALL on dsnews_content.* TO 'deSoftNews'@'localhost';