tests
methodCINT: aSLMethodTestObject
	"Answer the number of distinct message selectors sent by a method"

	^ self fewManyResult:
		(aSLMethodTestObject resultOf: #calledOperations) itemCount
		