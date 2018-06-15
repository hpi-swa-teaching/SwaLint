running
test: aTestObject with: aTest
	
	| plugIn |
	plugIn := self plugInForTest: aTest.
	^ environment 
		try: [
			plugIn tryTest: aTestObject with: aTest]
		catch: [ :error | 
			SLErrorResult newFor: error plugIn: plugIn test: aTest object: aTestObject]