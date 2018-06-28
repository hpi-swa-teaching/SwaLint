as yet unclassified
testUnreferencedVariables

	self 
		test: #unreferencedVariable:
		on: { SLUnreferencedVariablesInstVarsPass. SLUnreferencedVariablesInstVarsFail. SLUnreferencedVariablesClassVarsPass. SLUnreferencedVariablesClassVarsFail }
		expectedResults: { false. true. false. true }.