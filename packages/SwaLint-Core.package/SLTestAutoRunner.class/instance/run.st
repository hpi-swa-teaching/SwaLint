as yet unclassified
run
	
	|environment|
	environment := SLDefaultEnvironment new
		selectedTests: self testsSelected;
		selectedClasses: self classesSelected;
		yourself.
		
	self resultDialog: (SLResultDialog onEnvironment: (SLTestRunner onEnvironment: environment)).
	self changed: #resultCountLabel.

	