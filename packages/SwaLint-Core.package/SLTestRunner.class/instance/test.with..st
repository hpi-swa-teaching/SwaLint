running
test: aTestObject with: aTest
	
	| plugIn |
	plugIn := self plugInForTest: aTest.
	(SwaLint class: aTestObject testObjectClass ignoresRule: aTest method asSymbol) ifTrue: [
		^ SLNoResult new].
	^ environment 
		try: [
			plugIn tryTest: aTestObject with: aTest]
		catch: [ :error | 
			SLErrorResult newFor: error plugIn: plugIn test: aTest object: aTestObject]