accessing - toolbuilder
availableClasses

	^ (self selectedSystemCategories gather: [:category | self classesInSystemCategory: category])
		sorted: #name ascending