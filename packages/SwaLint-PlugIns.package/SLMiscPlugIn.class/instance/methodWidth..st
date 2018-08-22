method tests
methodWidth: aSLMethodTestObject

	<slTestName: nil
	description: 'Maximum number of characters in the lines of a method'>

	| w |

	aSLMethodTestObject shouldBeMethod.
	aSLMethodTestObject sourceCode string linesDo: [ :line |
		w := (w ifNil: [0]) max: line size].
	^ self numericResult: w