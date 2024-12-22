accessing - toolbuilder
availableClasses
	<uses: #selectedSystemCategories>

	^ self cached:
		[(self selectedSystemCategories gather: [:category | self classesInSystemCategory: category])
			sl2SortedByHeavy: #name]