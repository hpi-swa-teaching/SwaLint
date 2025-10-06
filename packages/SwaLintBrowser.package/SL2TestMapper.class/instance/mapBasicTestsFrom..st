mapping - tests
mapBasicTestsFrom: aSLDefaultEnvironment

	| tests unusedMappers |
	tests := aSLDefaultEnvironment testCategories gather: [:category |
		((aSLDefaultEnvironment testsAtCategory: category) collect: [:testData |
			self mapTestFrom: testData])
				copyWithout: nil].
	unusedMappers := ((self testPragmas , self testStarPragmas)
		select: [:pragma | (pragma method hasLiteral: nil) not "yeah..."]
		thenCollect: #selector)
			copyWithoutAll: (tests collect: [:test | test mapper ifNotNil: #selector]).
	self assert: unusedMappers isEmpty description: 'Unused mappers found!'.
	^ tests