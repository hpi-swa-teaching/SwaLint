as yet unclassified
test01MethodCallersTest
	
	| aSLMethodTestObject aSLCollectionResult |

	self configureTestDictonaryForMethodCallersTest.
	
	aSLMethodTestObject := SLMethodTestObject newFrom: (SLTestMethodCaller01 														lookupSelector: #beingCalled).
	testSystem addClass: (SLClassTestObject newFrom: (SLTestMethodCaller01)).
				
	aSLMethodTestObject parent: testSystem.
	aSLCollectionResult := (SLMiscPlugIn new) methodCallers: aSLMethodTestObject.
	
	self assert: aSLCollectionResult itemCount equals: 5.