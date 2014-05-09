tests
csMethodHasDotAfterReturn: aSLMethodTestObject

	| result |
	aSLMethodTestObject shouldBeMethod.
	result := self hasDotAfterReturn: aSLMethodTestObject cleanSource.
	result ifNotNil: [(self preference: #NoDotAfterMethodEnd) ifTrue: [result := result not]].
	^ self booleanResult: result