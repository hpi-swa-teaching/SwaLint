actions
run

	self environment
		selectedTests: self testsSelected;
		selectedClasses: self classesSelected.
		
	self resultDialog: (SLResultDialog onEnvironmentWithoutOpening: 
		(SLTestRunner onEnvironment: self environment)).
		
	self changed: #resultCountLabel.

	