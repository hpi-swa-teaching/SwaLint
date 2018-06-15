testing
testClasscount

	self 
		test: #classcount
		on: {{SLDummyClass0}. {SLDummyClass01. SLDummyClass02. SLDummyClass03}. {SLDummyClass02. SLDummyClass021. SLDummyClass03. SLDummyClass031. SLDummyClass0311}}
		expectedResults: {1. 3. 5}