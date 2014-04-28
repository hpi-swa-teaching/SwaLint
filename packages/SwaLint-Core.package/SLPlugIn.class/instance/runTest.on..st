tests
runTest: aTest on: aSLTestObject
	"Send test:with:. If no result was answered, send the selector 
	of the test. Answer the result, if there was no result at all,
	raise an error"
	
	self run: [self test: aSLTestObject with: aTest]
		or: [self runTestMethodOf: aTest on: aSLTestObject]
		ifResult: [ :result | ^ result].
	^ self testNotFound: aTest