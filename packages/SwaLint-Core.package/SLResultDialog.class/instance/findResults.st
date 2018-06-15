updating
findResults

	| resultsDict allTestObjects |
	allTestObjects := self fetchAllTestObjects.
	resultsDict := Dictionary new.

	self environment results do: [ :each | 
		((allTestObjects includes: (each testObject)) 
		and: (testsSelected anySatisfy: [ :testData | testData symbol = each testData symbol])) 
			ifTrue: [self addEntry: each to: resultsDict]].

	^ self buildListFrom: resultsDict