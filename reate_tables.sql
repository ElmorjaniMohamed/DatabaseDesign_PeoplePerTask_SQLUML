-- Créer la base de données si elle n'existe pas
DROP DATABASE PeoplePerTask;
CREATE DATABASE IF NOT EXISTS PeoplePerTask;
-- Utilisez la base de données PeoplePerTask
USE PeoplePerTask;

-- Create Users Table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255),
    PasswordHash VARCHAR(255),
    EmailAddress VARCHAR(255),
    Job VARCHAR(255)
);

-- Insert Sample Data into Users Table
INSERT INTO Users (Username, PasswordHash, EmailAddress, Job)
VALUES
    ('Mohamed_ElMorjani', 'Elmorjani@$$_123', 'elmorjanimohamed9@email.com', 'Front-End UI/UX developer'),
    ('Mohamed_tergui', 'tergui2000$$', 'mohamed.tergui00@gmail.com', 'Full Stack developer');

-- Create Categories Table
CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(255)
);

-- Insert Sample Data into Categories Table
INSERT INTO Categories (CategoryName)
VALUES
    ('Design'),
    ('UI/UX Design'),
    ('developpement web full stack'),
    ('Photographer'),
    ('Design');

-- Create SubCategories Table
CREATE TABLE SubCategories (
    SubCategoryID INT AUTO_INCREMENT PRIMARY KEY,
    SubCategoryName VARCHAR(255),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Insert Sample Data into SubCategories Table
INSERT INTO SubCategories (SubCategoryName, CategoryID)
VALUES
    ('Web Development', 1),
    ('Graphic Design', 2);

-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectTitle VARCHAR(255),
    DescriptionProject TEXT,
    CategoryID INT,
    SubCategoryID INT,
    UserID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (SubCategoryID) REFERENCES SubCategories(SubCategoryID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Insert Sample Data into Projects Table
INSERT INTO Projects (ProjectTitle, DescriptionProject, CategoryID, SubCategoryID, UserID)
VALUES
    ('Web Development Project 1', 'Description for Project 1', 1, 1, 1),
    ('Graphic Design Project 1', 'Description for Project 1', 2, 2, 2),
    ('Design Project 1', 'Description for Design Project 1', 2, 2, 2);

-- Create Freelancers Table
CREATE TABLE Freelancers (
    FreelancerID INT AUTO_INCREMENT PRIMARY KEY,
    FreelancerName VARCHAR(255),
    Skills TEXT,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Insert Sample Data into Freelancers Table
INSERT INTO Freelancers (FreelancerName, Skills, UserID)
VALUES
    ('Freelancer 1', 'Web Development', 1),
    ('Freelancer 2', 'Graphic Design', 2);

-- Create Offers Table
CREATE TABLE Offers (
    OfferID INT AUTO_INCREMENT PRIMARY KEY,
    Amount DECIMAL(10, 2),
    Deadline DATE,
    FreelancerID INT,
    ProjectID INT,
    FOREIGN KEY (FreelancerID) REFERENCES Freelancers(FreelancerID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Insert Sample Data into Offers Table
INSERT INTO Offers (Amount, Deadline, FreelancerID, ProjectID)
VALUES
    (500.00, '2023-12-01', 1, 1),
    (300.00, '2023-12-05', 2, 2);

-- Create Testimonials Table
CREATE TABLE Testimonials (
    TestimonialID INT AUTO_INCREMENT PRIMARY KEY,
    Comment TEXT,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Insert Sample Data into Testimonials Table
INSERT INTO Testimonials (Comment, UserID)
VALUES
    ('Great work by Freelancer!', 1),
    ('Excellent design by Freelancer!', 2);
