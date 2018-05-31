testing
testWhileTrue

	self 
		test: #smallLintWhileTrue
		on: { SLTestWhileTrueFail. SLTestWhileTruePass }
		expectedResults: { 4. 0 }.