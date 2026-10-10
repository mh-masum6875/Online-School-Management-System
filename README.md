# Online School Management System

![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![Spring MVC](https://img.shields.io/badge/Spring_MVC-6DB33F?style=flat-square&logo=spring&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?style=flat-square&logo=bootstrap&logoColor=white)

A Java web application for maintaining student records, attendance, results and notices in one place. It replaces scattered paper records with a single system that is quick to search and easy to keep current.

## Features

- Role-based login for admin, teacher and student views
- Student, teacher, class, subject and session management
- Attendance entry and search
- Result entry, search and printable result reports (JasperReports)
- Notice board

## Tech stack

Java (JSP / Servlet), Spring MVC, MySQL, JasperReports, Bootstrap, built with Apache Ant in NetBeans.

## Project structure

| Path | Description |
| --- | --- |
| `src/java/com/idb/controller` | Request handling (`AppController`) |
| `src/java/com/idb/model` | Entities: students, teachers, classes, results, attendance, notices |
| `src/java/com/idb/service` | Business logic |
| `src/java/com/idb/report` | Result report templates |
| `web/` | JSP views and assets |
| `osmDB20181121 2147.sql` | Database schema and seed data |

## Running locally

1. Install JDK 8+, Apache Tomcat and MySQL.
2. Create a database and import the SQL file in the repo root.
3. Update the database settings in the Spring configuration (`applicationContext.xml`).
4. Open the project in NetBeans and run it on Tomcat, or build with `ant` and deploy the generated WAR.
