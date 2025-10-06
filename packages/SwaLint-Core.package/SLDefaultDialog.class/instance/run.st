actions
run

	self runnable ifFalse: [^ self].
	self testEnvironment selectedTests: self testsSelected.
	self testEnvironment selectedClasses: self classesSelected.
	SLResultDialog onEnvironment: 
		(SLTestRunner onEnvironment: self testEnvironment).