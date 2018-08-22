private
getBaseClassInstanceMethodsUsedIn: aSLClassTestObject
	
	^ (self allMethodsUsedIn: aSLClassTestObject) intersection:
		(aSLClassTestObject superInstanceMethods collect: 
			[ :each | each testObject selector ])