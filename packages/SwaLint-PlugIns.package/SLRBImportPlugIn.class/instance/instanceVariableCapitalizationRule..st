tests
instanceVariableCapitalizationRule: aSLClassTestObject
	aSLClassTestObject shouldBeClass.
	^ self successResult: 
		(aSLClassTestObject instanceVariables select: [ :each | 
		each variableName first isUppercase]) isEmpty not
