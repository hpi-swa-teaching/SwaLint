private
isUnclassifiedMethod: aSLMethodTestObject

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: (aSLMethodTestObject 
		testObject methodClass organization 
			categoryOfElement: aSLMethodTestObject methodSelector) = 
				Categorizer default