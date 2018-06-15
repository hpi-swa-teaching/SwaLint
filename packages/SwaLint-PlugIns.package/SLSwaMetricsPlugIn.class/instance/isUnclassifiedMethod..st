private
isUnclassifiedMethod: aSLMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: (aSLMethodTestObject 
		testObject methodClass organization 
			categoryOfElement: aSLMethodTestObject methodSelector) = 
				Categorizer default