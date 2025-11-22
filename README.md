# student-management-sql-project
Full relational database design with 15+ linked tables, foreign keys, and ER diagram for a student management system.
# Thopstech Student Management Database

This project is a complete SQL-based **Student Management System** designed for Thopstech Institute.  
It includes 15+ interconnected tables with proper foreign keys, constraints, and a detailed ER diagram.

## 📌 Key Features
- Full relational database design  
- 15+ tables with strong entity relationships  
- Foreign key constraints to maintain data integrity  
- Covers the entire lifecycle of a student in an institute:
  - Courses
  - Faculty
  - Rooms
  - Students
  - Admissions
  - Batches
  - Attendance
  - Payments
  - Exams
  - Placements
  - Labs
  - Staff  
- Includes sample data and complete SQL scripts for all tables  
- ER Diagram provided for easy understanding  

---

## 📂 Project Structure

### **1. SQL Script**
The file `thopstech_database.sql` contains:
- CREATE TABLE statements  
- INSERT sample data  
- All ALTER TABLE + FOREIGN KEY relations  

### **2. ER Diagram**
The ER diagram shows all entities and relationships between tables.  
This helps visualize the database design clearly.

(If you exported it as a PDF/PNG, it will appear here in the repo.)

---

## 📘 Tables Included
- `courses`
- `faculty`
- `rooms`
- `students`
- `admissions`
- `batches`
- `payments`
- `attendance`
- `exams`
- `placement`
- `labs`
- `staff`
- `users`

Each table is linked using **foreign keys** to represent real institute workflows.

---

## 🛠 How to Use

1. Install MySQL / XAMPP / WAMP  
2. Create a database:
   ```sql
   CREATE DATABASE thopstech;
   USE thopstech;
