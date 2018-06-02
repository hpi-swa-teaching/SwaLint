tests
magicNumbers: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #methodHasMagicNumber
		satisfying: [:result | result isPositive]


"This is the previous version of a magic number (or something else...) test

magicNumbers: aSLThing
	
	^ SLSmallLintPlugIn new
		test: aSLThing
		with: (SLTestData newNamed: #smallLintLiteralValuesSpelling)"
	
		
