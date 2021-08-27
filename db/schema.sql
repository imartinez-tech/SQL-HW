DROP DATABASE IF EXISTS work_db; 
CREATE DATABASE work_db;
USE work_db;
 
 CREATE TABLE department (
     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     department_name VARCHAR(30) NOT NULL 
 );
 
 
 CREATE TABLE role (
     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     title VARCHAR(30) NOT NULL,
     salary DECIMAL NOT NULL,
     department_id INT NOT NULL,
     FOREIGN KEY (department_id)
     REFERENCES department(id)
 );

 CREATE TABLE employee (
     id INT PRIMARY KEY,
     first_name VARCHAR(30) NOT NULL, 
     last_name VARCHAR(30) NOT NULL, 
     role_id INT NOT NULL,
     manager_id INT NOT NULL, 
     FOREIGN KEY (role_id)
     REFERENCES role(id)
     ON UPDATE CASCADE ON DELETE RESTRICT,
     
     FOREIGN KEY(manager_id)
     REFERENCES role(id)
     ON UPDATE CASCADE ON DELETE RESTRICT
     );