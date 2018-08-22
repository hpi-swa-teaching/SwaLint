tests
methodCM: aSLMethodTestObject

	<slTestName: 'Changing Methods [CM]'
	description: 'Counts number of methods that call this one'>

	| callers |

	callers := aSLMethodTestObject resultOf: #methodCallers:.
	^ self integerResult: callers itemCount