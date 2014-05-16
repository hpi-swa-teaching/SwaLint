tests
methodLineEnding: aSLMethodTestObject
	
	| aNumber  |

	aNumber := self methodLineEndingHelper: (aSLMethodTestObject sourceCode).
	^ self integerResult: aNumber.