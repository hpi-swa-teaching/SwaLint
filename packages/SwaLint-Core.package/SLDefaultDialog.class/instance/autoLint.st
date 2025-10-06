actions
autoLint
	
	self runnable ifFalse: [^ self].
	SLTestAutoRunner
		on: self classesSelected
		with: self testsSelected
		calledBy: self containingWindow
		reopens: self.
	self close.
