testing
testFloatEqualityComparison

	self 
		test: #smallLintFloatEqualityComparison 
		on: { SLTestFloatEqualityComparison01 . SLTestFloatEqualityComparisonNotQuite01 }
		expectedResults: { 2 . 0 }.
