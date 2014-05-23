tests
methodCM: aSLMethodTestObject

	| callers |

	callers := aSLMethodTestObject resultOf: #methodCallers.
	^ self integerResult: callers itemCount.