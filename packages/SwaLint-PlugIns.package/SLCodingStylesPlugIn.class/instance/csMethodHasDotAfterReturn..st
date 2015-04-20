tests
csMethodHasDotAfterReturn: aSLMethodTestObject

	| result |
	aSLMethodTestObject shouldBeMethod.
	result := self hasDotAfterReturn: aSLMethodTestObject cleanSource.
	(result notNil and: [self class NoDotAfterMethodEnd])
		ifTrue: [result := result not].
	^ self booleanResult: result