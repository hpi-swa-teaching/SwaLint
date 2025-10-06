tests
testJustSendsSuper
	
	self 
		test: #smallLintJustSendsSuper
		on: {SLTestJustSendsSuper01 . SLTestJustSendsSuper02}
		expectedResults: {0 . 1}.