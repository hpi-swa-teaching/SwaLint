accessing-test
selectInverseTests
	
	self testsSelected:
		(self tests asSet
			removeAll: self testsSelected;
			yourself).