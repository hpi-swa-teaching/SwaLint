tests
csMethodLineEnding: aSLMethodTestObject

	| endingCode |

	endingCode := self methodLineEndingHelper: (aSLMethodTestObject sourceCode).
	^ self integerResult: endingCode