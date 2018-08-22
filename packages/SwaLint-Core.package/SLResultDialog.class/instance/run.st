actions
run
	
	self runnable ifFalse: [^ self].
	self class onEnvironment: 
		(SLTestRunner onEnvironment: self environment).
	self close.