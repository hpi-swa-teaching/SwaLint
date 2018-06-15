actions
run

	self runnable ifFalse: [^ self].
	self environment selectedTests: testsSelected.
	self environment selectedClasses: classesSelected.
	SLResultDialog onEnvironment: 
		(SLTestRunner onEnvironment: self environment).