actions
run

	self runnable ifFalse: [^ self].
	self environment selectedTests: self testsSelected.
	self environment selectedClasses: self classesSelected.
	SLResultDialog onEnvironment: 
		(SLTestRunner onEnvironment: self environment).