menu
selectPackage: aPackage 

	classCategories listItems do: [ :category | 
		(aPackage includesSystemCategory: category) 
			ifTrue: [ self selectCategory: category ]].