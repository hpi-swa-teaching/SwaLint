tests
csMethodHasDotAfterReturn: aSLMethodTestObject

	<slTestName: nil
	description: 'Test a single method for dotAfterReturn'>
	<slTestHidden: true
	longRuntime: false>

	| result |
	aSLMethodTestObject shouldBeMethod.
	result := self hasDotAfterReturn: aSLMethodTestObject cleanSource.
	(result notNil and: [self class NoDotAfterMethodEnd])
		ifTrue: [result := result not].
	^ self booleanResult: result