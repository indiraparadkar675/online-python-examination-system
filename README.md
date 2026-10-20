# Online Python Examination and Assessment System

A web-based examination platform designed to conduct Python programming assessments through online multiple-choice questions (MCQs) and coding-based questions. The system provides student registration, examination management, result evaluation, attendance tracking, and administrative reporting.

## Overview

The Online Python Examination and Assessment System simplifies the process of conducting and managing Python examinations. Students can register, log in, attempt examinations, submit answers, and review their assessment results. Administrators can manage questions, monitor attendance, and generate result reports.

## Features

- **Student Registration and Login:** User registration and authentication for students.
- **MCQ-Based Examinations:** Interactive multiple-choice questions for Python concepts.
- **Coding Assessments:** A dedicated interface for answering programming questions.
- **Basic Automatic Evaluation:** Score calculation based on stored expected answers.
- **Admin Dashboard:** Administrative management of examination-related information.
- **Attendance Tracking:** Records student login and attendance information.
- **Result Management:** View and manage examination results.
- **Report Generation:** Export attendance and result reports in PDF and Excel formats.
- **Certificate Management:** Supports certificate-related administrative functionality.
- **Database Integration:** Stores examination questions, student records, answers, and results in MySQL.

## Technology Stack

| Component | Technology |
|---|---|
| Frontend | HTML, CSS, JavaScript |
| Backend | PHP |
| Database | MySQL / MariaDB |
| Database Administration | phpMyAdmin |
| Rich Text Editor | CKEditor |
| Report Generation | PHP-based PDF and Excel export functionality |
| Local Development | XAMPP |

## Project Structure

```text
online-python-examination-system/
├── admin/
│   ├── attendance.php
│   ├── attendance_pdf.php
│   ├── attendance_excel.php
│   ├── certificate.php
│   ├── result.php
│   ├── result_pdf.php
│   └── result_excel.php
├── image/
├── index.php
├── registration.php
├── exam.php
├── coding_area.php
├── end_review.php
├── code_end_review.php
├── header.php
├── footer.php
├── logout.php
├── style.css
├── quizz.css
├── python_exam.sql
└── README.md
```

*Note: This is a representative structure. Additional files and directories are included in the original project.*

## Prerequisites

Install the following software before running the project:

- XAMPP
- PHP compatible with the project's dependencies
- MySQL or MariaDB
- A modern web browser

## Installation and Setup

### 1. Clone the repository

```bash
git clone https://github.com/YOUR-USERNAME/online-python-examination-system.git
```

### 2. Move the project into the XAMPP directory

Extract or copy the project folder into:

```text
C:\xampp\htdocs\online-python-examination-system
```

### 3. Start the required services

Open the XAMPP Control Panel and start:

- Apache
- MySQL

### 4. Create the database

1. Open `http://localhost/phpmyadmin/`.
2. Create a database named `python_exam`.
3. Select the database.
4. Import the provided `python_exam.sql` file.

### 5. Configure the database connection

Review the database connection settings in the PHP files. Configure the database host, username, password, and database name according to your local MySQL setup.

**Important:** Do not commit database passwords or real account credentials to GitHub.

### 6. Run the application

Open the following URL in your browser:

```text
http://localhost/online-python-examination-system/
```

Register a student account and explore the examination portal. Configure administrator access separately using secure credentials.

## Learning Outcomes

This project demonstrates practical implementation of:

- Server-side web development using PHP.
- Relational database integration using MySQL.
- CRUD operations for examination data.
- Session-based login workflows.
- Assessment scoring and result management.
- Attendance reporting and data export.
- Integration of frontend interfaces with backend functionality.

## Future Enhancements

- Secure password hashing and prepared SQL statements.
- Role-based access control for students and administrators.
- A responsive and modern user interface.
- Randomized questions and configurable examination timers.
- Improved coding evaluation using a secure code execution environment.
- Detailed performance analytics and downloadable result summaries.
- Deployment to a secure web hosting platform.

## Disclaimer

This project is intended for educational and demonstration purposes. Review authentication, authorization, input validation, database security, and code execution safety before using it in a real examination environment.

## License

Choose an appropriate open-source license before distributing or reusing this project. Third-party dependencies retain their respective licenses.
