actions
run

	self environment
		selectedTests: self testsSelected;
		selectedClasses: self classesSelected;
		yourself.
		
	self resultDialog: (SLResultDialog onEnvironmentWithoutOpening: 
		(SLTestRunner onEnvironment: self environment)).
		
	self changed: #resultCountLabel.

	