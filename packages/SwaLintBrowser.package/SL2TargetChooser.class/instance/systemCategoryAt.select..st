accessing - toolbuilder
systemCategoryAt: anInteger select: aBoolean

	^ self
		systemCategory: (self availableSystemCategories at: anInteger)
		select: aBoolean