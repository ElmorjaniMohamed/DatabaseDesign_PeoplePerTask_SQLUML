# PeoplePerTask - Database Design

Welcome to the PeoplePerTask GitHub repository dedicated to database design. Our goal is to create a robust database to support all the features of the platform, ensuring optimal data management.

## Database Schema

### Main Tables
- **Users:**
  - User ID (Primary Key)
  - Username
  - Password (hashed)
  - Email Address
  - Other relevant information

- **Categories:**
  - Category ID (Primary Key)
  - Category Name

- **Sub-Categories:**
  - Sub-Category ID (Primary Key)
  - Sub-Category Name
  - Category ID (Foreign Key linked to Categories table)

- **Projects:**
  - Project ID (Primary Key)
  - Project Title
  - Description
  - Category ID (Foreign Key linked to Categories table)
  - Sub-Category ID (Foreign Key linked to Sub-Categories table)
  - User ID (Foreign Key linked to the project creator)

- **Freelancers:**
  - Freelancer ID (Primary Key)
  - Freelancer Name
  - Skills
  - User ID (Foreign Key linked to user profile)

- **Offers:**
  - Offer ID (Primary Key)
  - Amount
  - Deadline
  - Freelancer ID (Foreign Key linked to the freelancer offering the service)
  - Project ID (Foreign Key linked to the associated project)

- **Testimonials:**
  - Testimonial ID (Primary Key)
  - Comment
  - User ID (Foreign Key linked to the author of the testimonial)

## Database Manager User Stories

As a database manager:

- I will design a database schema that meets the current and future needs of PeoplePerTask.
- I will clearly document relationships between entities using UML diagrams.
- I will write SQL scripts to create the database in accordance with the defined schema.
- I will set up automatic and regular backup procedures.
- I will plan maintenance sessions to ensure optimal performance.
- I will anticipate platform growth by designing a scalable database.

## Bonus and Recommendations

- Use indexes to optimize query performance.
- Implement integrity constraints to ensure data quality.
- Consider using stored procedures for complex operations.
- Conduct performance tests on simulated loads to evaluate the robustness of the database.
