tests
testGlobalState

	self 
		test: #globalState:
		on: {SLTestGlobalStateFail. SLEmptyClass}
		expectedResults: {true. false}