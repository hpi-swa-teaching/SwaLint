actions
run
	
	self runnable ifFalse: [^ self].
	self class onEnvironment: 
		(SLTestRunner onEnvironment: self testEnvironment).
	self close.