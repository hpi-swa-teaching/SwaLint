tests
accessToForeignData: aSLClassTestObject

	<slTestName: 'Access to Foreign Data [ATFD]'
	description: 'The number accessed attributes of foreign classes' >

	^ self fewManyResult: 
		(self numberOfForgeinAccessorsIn: 
				aSLClassTestObject testSystem allMethods 
			calledBy: aSLClassTestObject)