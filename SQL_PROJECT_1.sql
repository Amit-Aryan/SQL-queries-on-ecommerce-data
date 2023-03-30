#Q1. 
CREATE DATABASE ecommerce;

USE ecommerce;

#Q3. 
DESC users_data;

#Q4. 
SELECT * FROM users_data LIMIT 100;

#Q5. 
SELECT DISTINCT country, language FROM users_data;

#Q6. 
SELECT SUM(socialNbFollowers),gender FROM users_data GROUP BY gender;

#Q7. 
-- (a)Uses Profile Picture in their Profile
SELECT COUNT(*) FROM users_data WHERE hasProfilePicture ="True";

-- (b)Uses Application for Ecommerce platform
SELECT COUNT(*) FROM users_data WHERE hasAnyApp ="True";

-- (c)Uses Android app
SELECT COUNT(*) FROM users_data WHERE hasAndroidApp ="True";

-- (d)Uses ios app
SELECT COUNT(*) FROM users_data WHERE hasIosApp ="True";

#Q8.
SELECT country,SUM(productsBought) FROM users_data GROUP BY country ORDER BY SUM(productsBought) DESC;

#Q9. 
SELECT country,AVG(productsSold) FROM users_data GROUP BY country ORDER BY AVG(productsSold) ASC;

# Q10. 
SELECT country,SUM(productsPassRate) FROM users_data GROUP BY country ORDER BY SUM(productsPassRate) DESC LIMIT 10;

# Q11. 
SELECT language, COUNT(*) FROM users_data GROUP BY language;

# Q12. 
SELECT SUM(productsWished),SUM(socialProductsLiked) FROM users_data WHERE gender='F';

# Q13. 
SELECT SUM(productsSold),SUM(productsBought) FROM users_data WHERE gender='M';

# Q14. 
SELECT country,SUM(productsBought) FROM users_data GROUP BY country ORDER BY SUM(productsBought) DESC;

# Q15. 
SELECT productsSold,country FROM users_data WHERE productsSold=0 LIMIT 10;

# Q16. 
SELECT * FROM users_data ORDER BY daysSinceLastLogin LIMIT 110;

# Q17. 
SELECT gender,COUNT(daysSinceLastLogin) FROM users_data WHERE gender='F' AND daysSinceLastLogin >100;

# Q18. 
SELECT country, COUNT(*) FROM  users_data WHERE gender='F' GROUP BY country;

# Q19. 
SELECT country, COUNT(*) FROM  users_data WHERE gender='M' GROUP BY country;

# Q20. 
SELECT AVG(productsSold),AVG(productsBought),country FROM users_data WHERE gender='M' GROUP BY country;

 

