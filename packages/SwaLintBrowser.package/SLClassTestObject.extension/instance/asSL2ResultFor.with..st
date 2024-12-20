*SwaLintBrowser-Core-converting
asSL2ResultFor: aSL2Test with: resultData

	^ SL2ClassResult
		newFor: self testObject
		test: aSL2Test
		resultData: resultData