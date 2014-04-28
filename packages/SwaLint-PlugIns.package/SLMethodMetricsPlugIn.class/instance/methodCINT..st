tests
methodCINT: aSLMethodTestObject
	"Answer the number of distinct message selectors sent by a method"

	^ self integerResult:
		(aSLMethodTestObject resultOf: #calledOperations) itemCount
		