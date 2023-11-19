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
SELECT MAX(DescriptionProject) AS theLongestDescriptionLength
FROM Projects;

