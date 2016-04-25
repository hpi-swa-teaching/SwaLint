tests
magicNumbers: aSLThing
	
	^ SLSmallLintPlugIn new
		test: aSLThing
		with: (SLTestData newNamed: #smallLintLiteralValuesSpelling)