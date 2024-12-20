accessing - toolbuilder
systemCategory: category select: aBoolean

	self target systemCategories:
		(aBoolean
			ifFalse: [self target systemCategories copyWithout: category]
			ifTrue: [(self target systemCategories copyWith: category) withoutDuplicates]).
	
	self changed: #selectedSystemCategories.
	
	aBoolean
		ifTrue: [self selectedClasses: (self selectedClasses , (self classesInSystemCategory: category)) withoutDuplicates]
		ifFalse: [self selectedClasses: (self selectedClasses intersection: self availableClasses)].