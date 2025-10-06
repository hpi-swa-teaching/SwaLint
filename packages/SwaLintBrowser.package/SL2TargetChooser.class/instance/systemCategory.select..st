accessing - toolbuilder
systemCategory: category select: aBoolean

	self selectedSystemCategories:
		(aBoolean
			ifFalse: [self target systemCategories copyWithout: category]
			ifTrue: [(self target systemCategories copyWith: category) withoutDuplicates]).
	
	aBoolean ifTrue:
		[self selectedClasses: (self selectedClasses , (self classesInSystemCategory: category)) withoutDuplicates].