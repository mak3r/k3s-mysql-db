CREATE USER 'k3s-admin'@'%' IDENTIFIED BY 'k3s-admin-pw';
GRANT ALL PRIVILEGES ON *.* TO 'k3s-admin'@'%';
