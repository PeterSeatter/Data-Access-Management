SELECT
	category.categoryID,
    category.categoryName,
    article.articleID,
    article.name
FROM category
JOIN article ON category.categoryID = article.Category_categoryID
ORDER BY category.categoryID ASC