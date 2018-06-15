testing
testMethodModifierFinal

	self 
		test: #smallLintMethodModifierFinal
		on: { SLTestMethodModifierFinal01 . SLTestMethodModifierFinal02 }
		expectedResults: { 0 . 1 }.
