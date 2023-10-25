#!/bin/bash

# Task 3: Setting Up MySQL Database
echo "Install MySQL (if not already installed)"
sudo apt-get install -y mysql-server

echo "Secure the MySQL installation"
sudo mysql_secure_installation --user root
#Enter password
sudo passwd
su -

echo "Login into mySQL Server"
mysql -u root

echo "Reset root password"
mysql> FLUSH PRIVILEGES;
mysql> use mysql;
mysql> update user set plugin="mysql_native_passwd" where User='root';
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'your_new_password';
mysql> FLUSH PRIVILEGES;
mysql> quit

use sql

#Task 4: Creating Student Table and Data
echo "Login to mySQL Server"
echo "Access MySQL using the root user"
mysql -u root -p OR mysql -u root

echo "Create database"
CREATE DATABASE studentsManagement;

echo "Use the student_records database"
USE studentsManagement;

echo "Create the students table"
CREATE TABLE studentInfo (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    gender ENUM('Male','Female', 'Other'),
    course VARCHAR(255));

echo "Insert sample data into the students table"
INSERT INTO studentInfo (name, age, gender, course) VALUES
('Julias Tshauke', 20, 'Male', 'Computer Systems'),
('Lucas Matsi', 20, 'Male', 'Computer Science'),
('Thendo Mabhara', 23, 'Male', 'Marketing'),
('Jacob Nkosi', 21, 'Male', 'Marketing'),
('Lerato Gumede', 25, 'Female', 'Photography'),
('Zwonaka Mukwevho', 24, 'Female', 'Industrial Engineering');

echo "View Data"
SELECT * FROM studentInfo;
