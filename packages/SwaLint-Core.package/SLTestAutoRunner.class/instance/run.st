actions
run
	
	|environment|
	
	environment := SLDefaultEnvironment new
		selectedTests: self testsSelected;
		selectedClasses: self classesSelected;
		yourself.
		
	self environment: (SLTestRunner onEnvironment: environment).
	self changed: #resultCountLabel.

	