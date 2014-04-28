tests
accessToForeignData: aSLClassTestObject

	^ self fewManyResult: 
		(self numberOfForgeinAccessorsIn: 
				aSLClassTestObject testSystem allMethods 
			calledBy: aSLClassTestObject)