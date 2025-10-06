tests
testEquivalentSuperclassMethods
	
	self 
		test: #smallLintEquivalentSuperclassMethods
		on: {SLEquivalentSuperclassMethods . SLEquivalentSuperclassMethodsSubclass}
		expectedResults: {0 . 1}.

