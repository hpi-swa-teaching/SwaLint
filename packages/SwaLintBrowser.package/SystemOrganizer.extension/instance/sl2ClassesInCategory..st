*SwaLintBrowser-Core-accessing
sl2ClassesInCategory: categoryName

	^ (self listAtCategoryNamed: categoryName)
		collect: [:className | self environment classNamed: className]