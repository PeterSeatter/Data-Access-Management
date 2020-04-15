
-- -----------------------------------------------------
-- Example, Use CALL browseArticlesByKeyword (‘mon’)
-- -----------------------------------------------------

USE `schoolsystemproject`; 

DROP procedure IF EXISTS ` browseArticlesByKeyword `; 

 DELIMITER // 

USE `schoolsystemproject`// 

CREATE DEFINER=`root`@`localhost` PROCEDURE `browseArticlesByKeyword`(browseArticlesByKeyword VARCHAR(45)) 

BEGIN 

SELECT category.categoryName, article.articleID, article.name 

FROM category  

JOIN article  

ON category.categoryID = article.Category_categoryID  

WHERE name LIKE CONCAT ( '%', browseArticlesByKeyword, '%') 

ORDER BY category.categoryID ASC; 

 END// 

 DELIMITER ; 

