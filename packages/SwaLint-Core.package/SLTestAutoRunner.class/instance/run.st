as yet unclassified
run
	
	|environment|
	environment := SLDefaultEnvironment new
		selectedTests: self testsSelected;
		selectedClasses: self classesSelected;
		yourself.
	SLResultDialog onEnvironment: (SLTestRunner onEnvironment: environment).

	