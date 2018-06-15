actions
run
	
	self runnable ifFalse: [^ self].
	SLResultDialog onEnvironment: 
		(SLTestRunner onEnvironment: self environment).
	self close.