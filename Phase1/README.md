# Hospital Management Database

## Overview
This repository contains the SQL script for the **Hospital Management Database - Phase 1**. The database is designed to manage hospital records efficiently, covering various entities such as patients, doctors, appointments, and medical records. The objective is to streamline hospital operations by maintaining structured and accessible data.

## Files
- `hospital_management.sql`: The SQL script containing the database schema, including table creation, constraints, and sample data.
- `README.md`: This documentation file explaining the purpose, structure, and usage of the project.

## How to Use
### Prerequisites
Ensure that you have a database management system installed, such as MySQL or PostgreSQL, to execute the SQL script.

### Steps to Set Up the Database
1. Clone the repository using the following command:
   ```bash
   git clone <repo-url>
   ```
2. Open your preferred database management tool (e.g., MySQL Workbench, pgAdmin, or SQL Server Management Studio).
3. Create a new database with the desired name.
4. Open and execute the `hospital_management.sql` script in the SQL editor.
5. Verify that the tables have been created successfully by running:
   ```sql
   SHOW TABLES; -- For MySQL
   SELECT table_name FROM information_schema.tables WHERE table_schema = 'your_database_name'; -- For PostgreSQL
   ```

## Database Schema
The database consists of multiple tables designed to store and manage hospital operations efficiently. Below are the key entities:

### Tables
- **Patients**: Stores patient details, including name, age, gender, contact information, and medical history.
- **Doctors**: Contains information about doctors, their specializations, contact details, and availability.
- **Appointments**: Manages scheduling between doctors and patients, including appointment dates, status, and assigned doctors.
- **Medical Records**: Keeps track of patient diagnoses, treatments, and prescriptions.
- **Billing**: Handles patient billing and payment transactions.
- **Departments**: Stores information about different hospital departments such as Cardiology, Neurology, and Pediatrics.
- **Staff**: Maintains records of hospital administrative and support staff.

### Relationships
- A **Patient** can have multiple **Appointments**.
- A **Doctor** can handle multiple **Appointments**.
- Each **Appointment** is linked to a specific **Doctor** and **Patient**.
- **Medical Records** are associated with a **Patient** and updated with each visit.
- **Billing** entries are generated per **Patient** based on treatment and services received.

## Features
- **Patient Management**: Store and retrieve patient information easily.
- **Doctor Management**: Maintain a directory of doctors with their specialties and availability.
- **Appointment Scheduling**: Enable smooth booking and rescheduling of appointments.
- **Medical History Tracking**: Keep a record of diagnoses, treatments, and prescribed medications.
- **Billing and Payments**: Manage hospital billing processes efficiently.

## License
This project is open-source and available for modification and use. Feel free to use and enhance it based on your needs.

## Contributions
We welcome contributions from the community! If you want to improve the database structure, fix issues, or add new features, follow these steps:
1. Fork the repository.
2. Create a new branch for your changes.
3. Commit and push your changes.
4. Submit a pull request for review.
