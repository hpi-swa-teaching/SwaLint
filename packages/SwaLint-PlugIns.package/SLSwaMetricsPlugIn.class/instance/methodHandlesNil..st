private
methodHandlesNil: aSLMethodTestObject

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: (aSLMethodTestObject testObject literals
		includesAnyOf: #(#nil isNil notNil ifNil: ifNotNil: ifNotNilDo: ))
