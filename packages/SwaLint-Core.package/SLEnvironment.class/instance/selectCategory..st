menu
selectCategory: aSymbol

	classCategories 
		listSelectionAt: (classCategories listItems indexOf: aSymbol) put: true.

	(systemClasses at: aSymbol) 
		do: [ :cls |
			classes listSelectionAt: (self classes listItems indexOf: cls) put: true].