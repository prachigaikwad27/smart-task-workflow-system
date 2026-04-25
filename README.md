# Smart Task & Workflow Management System

This project is a full-stack web application designed to simulate real-world task and workflow management in an organization.

##  Features

* Role-Based Access Control (Admin / Employee)
* Task lifecycle (Pending → In Progress → Completed)
* Task priority (High / Medium / Low)
* Deadline tracking
* Dashboard for task analytics

##  System Design

* Admin can assign and monitor tasks
* Employees can view and update their tasks
* Tasks follow a structured workflow lifecycle

### Database Design

* Users Table → stores roles
* Tasks Table → stores task details
* One-to-many relationship (User → Tasks)

##  Tech Stack

* PHP
* MySQL
* HTML / CSS

##  Description

This project was developed to understand backend system design, workflow handling, and role-based access control in a full-stack application.

##  Learning Outcomes

* Backend logic design
* Database relationships
* Workflow-based system design
* Real-world application structuring

---

 Demonstrates practical full-stack development and system design thinking.

##  Database Schema

```sql
CREATE DATABASE task_system;

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR(255),
    priority VARCHAR(50),
    status VARCHAR(50)
);
```

##  Workflow Logic

* Task is created with default status = Pending
* Status can move to → In Progress → Completed
* Priority helps in task sorting and management

##  System Highlights

* Simulates real-world workflow system
* Backend handles data persistence using MySQL
* Designed with scalability in mind

---
