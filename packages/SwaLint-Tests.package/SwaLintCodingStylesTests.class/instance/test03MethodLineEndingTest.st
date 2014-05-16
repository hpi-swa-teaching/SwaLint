testing
test03MethodLineEndingTest

	| method testResult |
	
	self configureTestDictionaryForLineEndingTest.
	
	method := SLMethodTestObject newFrom: 
		(SLInconsistentLineEndingClass methodDict at: #squeakStyle).
	method parent: testSystem.
	
	testResult := method resultOf: #methodLineEnding.
	
	self assert: testResult equals: 1.
	self deny: testResult = 2.