building
buildResultsWith: aBuilder

	^ (Smalltalk isMorphic)
		ifFalse: [self buildResultsListWith: aBuilder]
		ifTrue: [self buildResultsListForMorphicWith: aBuilder]
