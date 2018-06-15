private
methodHandlesNil: aSLMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: (aSLMethodTestObject testObject literals
		includesAnyOf: #(#nil isNil notNil ifNil: ifNotNil: ifNotNilDo: ))
