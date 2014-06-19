testing
test01LineEndingConsistencyTest

	| testClass testResult |
	
	self configureTestDictionaryForLineEndingTest.
	
	testClass := SLClassTestObject newFrom: SLInconsistentLineEndingClass.
	testClass parent: testSystem.
	
	self assert: ((testClass methodForSelector: #squeakStyle) resultOf: #csMethodLineEnding) equals: 1.
	self deny: (((testClass methodForSelector: #noLineEnding) resultOf: #csMethodLineEnding) = 1).
	self assert: (testClass resultOf: #numberOfMethods) equals: 2.
	
	testResult := testClass resultOf: #differingLineEndings.
	self assert: testResult equals: 1.