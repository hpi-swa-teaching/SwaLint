accessing - toolbuilder
hasSystemCategorySelectedAt: anInteger
	<uses: #hasSystemCategorySelected:>

	^ self hasSystemCategorySelected: (self availableSystemCategories at: anInteger)