testing
testArgumentVariableNamesSpelling

	self 
		test: #smallLintArgumentVariableNamesSpelling 
		on: { SLTestArgumentVariableNamesSpelling01 . 
			SLTestArgumentVariableNamesSpellingNotQuite01 }
		expectedResults: { 1 . 0 }.
