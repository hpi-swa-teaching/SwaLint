tests
methodCM: aSLMethodTestObject

	<slTestName: 'Changing Methods [CM]'
	description: nil>

	| callers |

	callers := aSLMethodTestObject resultOf: #methodCallers:.
	^ self integerResult: callers itemCount