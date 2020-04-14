-- -----------------------------------------------------
-- Create Article
-- -----------------------------------------------------

INSERT INTO article (articleID, Category_categoryID, Type_typeID, name)
VALUES (11, 2, 4, 'anotherName');

SELECT * FROM article;

-- -----------------------------------------------------
-- Update Article
-- -----------------------------------------------------

UPDATE article SET name = 'A different Name' WHERE name = 'newName' ;

SELECT * FROM article;