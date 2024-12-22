actions
run

	self testEnvironment
		selectedTests: self testsSelected;
		selectedClasses: self classesSelected.
		
	self resultDialog: (SLResultDialog onEnvironmentWithoutOpening: 
		(SLTestRunner onEnvironment: self testEnvironment)).
		
	self changed: #resultCountLabel.

	