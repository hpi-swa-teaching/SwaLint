actions
run
	
	|environment|
	
	environment := SLDefaultEnvironment new
		selectedTests: self testsSelected;
		selectedClasses: self classesSelected;
		yourself.
		
	self resultDialog: (SLResultDialog onEnvironmentWithoutOpening: 
		(SLTestRunner onEnvironment: environment)).
	self changed: #resultCountLabel.

	