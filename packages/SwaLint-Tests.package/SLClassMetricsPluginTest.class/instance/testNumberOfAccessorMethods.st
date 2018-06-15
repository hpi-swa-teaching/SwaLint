testing
testNumberOfAccessorMethods

	self 
		test: #numberOfAccessorMethods
		on: {SLDummyClass0. SLDummyClass01. SLDummyClass02}
		expectedResults: {2. 0. 1}.
