mapping - tests
mapBasicTestFrom: aSLTestData

	| pragmas pragma test starMaps |
	pragmas := self testPragmas select: [:ea | (ea argumentAt: 1) = aSLTestData key].
	
	pragmas size > 1 ifTrue: [self error: 'multiple maps for test'].
	pragmas ifNotEmpty:
		[pragma := pragmas anyOne.
		test := self perform: pragma selector with: aSLTestData.
		test ifNil: [^ nil].
		test mapper: pragma method.
		^ test].
	
	starMaps := self testStarPragmas
		collect: [:starPragma | starPragma -> (self perform: starPragma selector with: aSLTestData)]
		thenSelect: [:starMap | starMap value notNil].
	starMaps size > 1 ifTrue: [self error: 'multiple star maps for test'].
	starMaps ifNotEmpty:
		[test := starMaps anyOne value.
		test mapper: starMaps anyOne key.
		^ test].
	
	^ self makeTestFrom: aSLTestData