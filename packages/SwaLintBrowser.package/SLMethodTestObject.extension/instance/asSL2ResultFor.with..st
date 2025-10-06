*SwaLintBrowser-Core-converting
asSL2ResultFor: aSL2Test with: resultData

	^ SL2MethodResult
		newFor: self testObject
		test: aSL2Test
		resultData: resultData