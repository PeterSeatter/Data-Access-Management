USE `schoolsystemproject`; 

DROP procedure IF EXISTS `browseArticlesByCategory`; 

DELIMITER // 

USE `schoolsystemproject`// 

CREATE DEFINER=`root`@`localhost` PROCEDURE `browseArticlesByCategory`() 

BEGIN 

SELECT category.categoryName, article.articleID, article.name 

FROM category  

JOIN article  

ON category.categoryID = article.Category_categoryID  

ORDER BY category.categoryID ASC; 

END// 

 DELIMITER ; 
