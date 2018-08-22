tests
isAddedService: aSLMethodTestObject

	<slTestName: 'Method is an added Service'
	description: 'Answers whether method extends its class interface comapred to its superclass'>

	^ self booleanResult: (
		aSLMethodTestObject parent testObject superclass allSelectors includes:
			aSLMethodTestObject methodSelector) not