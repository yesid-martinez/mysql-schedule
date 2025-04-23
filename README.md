# Academic Schedule Database Project

## Purpose

This project is aimed at creating the structure of a database for managing a university student's academic schedule using **MySQL Workbench**. Throughout the project, you will strengthen your skills in:

- Creating tables  
- Defining relationships between them  
- Managing data using SQL commands and MySQL Workbench's features

## Overview

The database structure will manage various aspects of a student's academic schedule, including:

- **Programs**: Different academic programs offered  
- **Curricula**: Courses associated with each program  
- **Courses**: Individual courses within a curriculum  
- **Cities**: Locations of the university's campuses  
- **Campuses**: Campuses within the cities  
- **Blocks**: Building blocks for campuses  
- **Classrooms**: Specific classrooms in each block of the campus  
- **Professors**: Teaching staff  
- **Students**: Students enrolled in the university, along with their academic details  
- **Class Schedules**: Assignments of students to courses at specific times and locations  

The relational structure involves multiple tables with primary keys, foreign keys, and constraints to maintain referential integrity between them.

## Database Structure

The database consists of several tables designed to manage and track a student's academic schedule. Below is a summary of the key tables and relationships:

- **Programa**: Holds information about different academic programs  
- **Pensum**: Lists the curricula for each program  
- **Asignaturas**: Describes courses offered in the curricula  
- **Ciudades**: Represents the cities where campuses are located  
- **Sedes**: Represents different campuses within each city  
- **Bloques**: Represents building blocks within a campus  
- **Aulas**: Represents classrooms in the building blocks  
- **Docente**: Holds information about professors  
- **Estudiantes**: Represents students and their academic enrollment  
- **Enca_Hora**: Stores student schedules  
- **Enca2_Hora**: Tracks course schedules for students, including the professor, classroom, and timing  

## Setup Instructions

### Requirements

- **MySQL Workbench**: You must have MySQL Workbench installed to manage the database  
- **MySQL Server**: Ensure that your MySQL server is running and accessible  

### Steps

1. Open MySQL Workbench and connect to your MySQL server  
2. Create a new schema (database) for the project:

    ```sql
    CREATE DATABASE AcademicSchedule;
    USE AcademicSchedule;
    ```

3. Copy and paste the table creation SQL commands into the query window in MySQL Workbench. These commands include the creation of tables, primary keys, foreign keys, and constraints as defined in the schema above  
4. Execute the SQL commands to create the database structure  

## Table Descriptions

Each table in the database represents an entity related to the academic schedule. The relationships between tables are maintained through foreign keys, ensuring data integrity across the system. The **Pensum**, **Asignaturas**, **Estudiantes**, and **Enca2_Hora** tables are the core of the system, linking students to their courses and professors in specific classrooms.

## SQL Example

To create the `Programa` table:

```sql
CREATE TABLE IF NOT EXISTS Programa (
    Codi_Prog INT AUTO_INCREMENT PRIMARY KEY,
    Nomb_Prog VARCHAR(255) NOT NULL
);
```

Similarly, other tables are created with the necessary columns and constraints.

## Foreign Key Relationships
The Pensum table references the Programa table

The Asignaturas table references the Pensum table

The Enca2_Hora table references the Estudiantes, Docente, and Aulas tables

## Managing Data
You can now insert, update, delete, and query data using SQL commands in MySQL Workbench.

## Conclusion
This project allows you to practice the creation and management of a university schedule database. By using MySQL Workbench, you’ll strengthen your SQL skills, especially when working with relational databases and managing complex relationships between multiple tables.

