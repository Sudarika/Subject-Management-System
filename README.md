# Subject Management System

This project is a web application for managing subjects, allowing users to add, edit, and delete subject details. It utilizes Java Servlets, JSP, and JSTL for backend processing and frontend rendering.

## Features

- User Authentication
- Add, Edit, and Delete Subject Details
- User-Specific Views
- Responsive Design

## Technologies Used

- Java
- JSP (JavaServer Pages)
- JSTL (JavaServer Pages Standard Tag Library)
- HTML5
- CSS3
- Bootstrap
- JavaScript
- jQuery

## Prerequisites

- Java Development Kit (JDK)
- Apache Tomcat
- A Java IDE (Eclipse, IntelliJ IDEA, etc.)
- MySQL or any other relational database

## Steps

1. Clone the repository:
2. Import the project into your IDE.
3. Configure the database:
    - Create a database named `subject_management`.
    - Execute the SQL script provided in `db/schema.sql` to create the necessary tables.
4. Update database configuration:
    - Open `src/main/resources/db.properties`.
    - Update the database URL, username, and password according to your setup.
5. Deploy the application:
    - Build the project.
    - Deploy the WAR file to Apache Tomcat.
6. Run the application:
    - Access the application via `http://localhost:8080/subject-management-system`.

## Usage

### Authentication

- Users need to log in using their credentials.
- New users can register via the registration page.

### Managing Subjects

- After logging in, users can add new subjects via the form.
- Users can edit or delete existing subjects from the list view.

### Sample Pages

- **Home Page:** Displays a welcome message and navigation links.
- **Subject Form:** Allows adding or editing subject details.
- **Success Page:** Displays a success message after form submission or deletion.

