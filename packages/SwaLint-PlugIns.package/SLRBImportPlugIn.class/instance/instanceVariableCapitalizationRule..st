as yet unclassified
instanceVariableCapitalizationRule: aSLClassTestObject

	<slTestName:  'Instance variable capitalization'
	description: 'Instance variable names on the instance- and class-side should start with a lowercase letter. Searches for classes that do not follow this convention (have at least one variable that does not)'
	category: 'Intention revealing'>
	
	aSLClassTestObject shouldBeClass.
	^ self successResult: 
		(aSLClassTestObject instanceVariables select: [ :each | 
		each variableName first isUppercase]) isEmpty not
