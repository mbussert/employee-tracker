DROP DATABASE IF EXISTS employeeDB;

CREATE DATABASE employeeDB;

USE employeeDB;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT NOT NULL,
  FOREIGN KEY(department_id)
  REFERENCES department(id),
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NULL,
  FOREIGN KEY(role_id)
  REFERENCES role(id),
  FOREIGN KEY(manager_id)
  REFERENCES employee(id),
  PRIMARY KEY (id)
);


INSERT INTO department (name) VALUES ("Sales");
INSERT INTO department (name) VALUES ("Engineering");
INSERT INTO department (name) VALUES ("Finance");
INSERT INTO department (name) VALUES ("Legal");

INSERT INTO role (title, salary, department_id) VALUES ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id) VALUES ("Salesperson", 80000, 1);
INSERT INTO role (title, salary, department_id) VALUES ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Software Engineer", 120000, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Accountant", 125000, 3);
INSERT INTO role (title, salary, department_id) VALUES ("Legal Team Lead", 250000, 4);
INSERT INTO role (title, salary, department_id) VALUES ("Lawyer", 190000, 4);

INSERT INTO employee (first_name, last_name, role_id) VALUES ("Michael", "Bussert", 2);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Tom", "Guy", 1);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Liam", "Smith", 4);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Claire", "Script", 3);