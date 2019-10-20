CREATE DATABASE notarysigner;
CREATE USER signer;
GRANT ALL PRIVILEGES ON *.* TO 'signer'@'%';
