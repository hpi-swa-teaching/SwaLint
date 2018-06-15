accessing-categories
getCategoriesFor: aPackage

	^ self categories select: [ :category | aPackage includesSystemCategory: category]