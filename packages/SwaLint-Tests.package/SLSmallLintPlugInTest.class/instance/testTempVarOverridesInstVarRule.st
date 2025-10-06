tests
testTempVarOverridesInstVarRule

	self 
		test: #smallLintTempVarOverridesInstVar 
		on: { SLTestTempVarOverridesInstVarRule01 . SLDummyClass0 }
		expectedResults: { 1 . 0 }.
