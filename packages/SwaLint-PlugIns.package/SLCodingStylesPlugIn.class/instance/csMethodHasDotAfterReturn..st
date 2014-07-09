tests
csMethodHasDotAfterReturn: aSLMethodTestObject

	| result |
	aSLMethodTestObject shouldBeMethod.
	result := self hasDotAfterReturn: aSLMethodTestObject cleanSource.
	result ifNotNil: 
		[(SLPreferences preferenceAt: #NoDotAfterMethodEnd) preferenceValue 
			ifTrue: [result := result not]].
	^ self booleanResult: result