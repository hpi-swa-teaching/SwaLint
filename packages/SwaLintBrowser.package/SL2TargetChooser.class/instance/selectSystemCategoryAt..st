accessing - toolbuilder
selectSystemCategoryAt: anInteger

	self selectSystemCategory: (self availableSystemCategories at: anInteger ifAbsent: [nil]).