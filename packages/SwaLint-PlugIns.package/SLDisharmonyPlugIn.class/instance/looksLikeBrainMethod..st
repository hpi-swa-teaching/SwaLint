private
looksLikeBrainMethod: aSLMethodTestObject

	^ 	((aSLMethodTestObject resultOf: #maxNesting:) >= #several) and:
		[(aSLMethodTestObject resultOf: #numberOfAccessedVars:) > #many] and:
		[(aSLMethodTestObject resultOf: #methodCYCLO:) >= #high]