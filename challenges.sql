/* Select:
Challenge: Retrieve usernames and email addresses of all users from the 'Utilisateurs' table.*/
/*SELECT Username, EmailAddress
FROM users*/

/* Where:
Challenge: Fetch project titles and descriptions from the 'Projets' table where the project category is 'Design'.*/
/*SELECT ProjectTitle ,DescriptionProject
FROM projects
WHERE CategoryID = (select CategoryID from Categories where CategoryName IN ('Design'));*/

/*Count:
Challenge: Count the total number of testimonials in the 'Témoignages' table.*/
/*SELECT COUNT(*)
FROM testimonials*/

/*Distinct:
Challenge: Retrieve distinct categories available in the 'Catégories' table.*/
/*SELECT DISTINCT CategoryName FROM categories*/

/*Group By:
Challenge: Show the count of projects in each category from the 'Projets' table.*/
/*SELECT COUNT(ProjectID), CategoryID
FROM Projects
GROUP BY CategoryID;*/

/*Max/Min:
Challenge: Find the project with the longest description length from the 'Projets' table.*/
/*SELECT *
FROM projects
WHERE LENGTH(DescriptionProject) = (SELECT MAX(LENGTH(DescriptionProject)) FROM projects);*/

/*Like:
Challenge: Retrieve usernames from the 'Utilisateurs' table where the email address contains 'gmail.com'.*/
/*SELECT *
FROM users
WHERE EmailAddress LIKE '%gmail.com';*/

/*Joins:
Challenge: Fetch project titles, descriptions, and associated categories from the 'Projets' table joined with the 'Catégories' table.*/

/*SELECT projects.ProjectTitle, projects.DescriptionProject, categories.CategoryName
FROM projects
INNER JOIN categories ON projects.CategoryID = categories.CategoryID;*/

/*Views:
Challenge: Create a view that displays project titles and associated freelancer names from the 'Projets' table and 'Freelances' table.*/
/*CREATE VIEW DisplayFreelancerViews AS
SELECT projects.ProjectTitle, freelancers.FreelancerName
FROM projects
INNER JOIN freelancers ON projects.FreelancerID = freelancers.FreelancerID;*/

/*Alias:
Challenge: Display project titles and their corresponding categories, but rename the category column as 'Project_Category'.*/
SELECT projects.ProjectTitle, categories.CategoryName AS Project_Category
FROM projects
INNER JOIN categories ON projects.CategoryID = categories.CategoryID;

SELECT * FROM users, projects, categories;

SELECT projects.ProjectTitle, users.Username     
FROM projects, users
WHERE UserID = (SELECT UserID FROM users WHERE Username = 'Mohamed_tergui');