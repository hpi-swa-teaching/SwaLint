tests
testNoPointAfterReturn

	self 
		test: #dotAfterReturn:
		on: {SLPointAtMethodEndDummy. SLEmptyClass}
		expectedResults: {2/3. 1}.