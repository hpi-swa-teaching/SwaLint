tests
numberOfProtectedMethods: aSLClassTestObject

	<slTestName: 'Number of Protected methods [NProtM]'
	description: 'Answer the number of protected methods in a class' >

	^ self fewManyResult: 
		(aSLClassTestObject methods select: 
			[ :each | (each resultOf: #isPrivate:) content]) size