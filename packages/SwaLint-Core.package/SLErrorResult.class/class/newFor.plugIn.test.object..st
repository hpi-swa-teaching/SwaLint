instance creation
newFor: error plugIn: plugIn test: aTest object: aTestObject

	^ self newWithValue:
		(SLTestError newFor: error plugIn: plugIn test: aTest object: aTestObject)