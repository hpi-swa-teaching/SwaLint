tests
deadCode: aSLThing
	
	^ SLSmallLintPlugIn new
		test: aSLThing
		with: (SLTestData newNamed: #smallLintClassNotReferenced)