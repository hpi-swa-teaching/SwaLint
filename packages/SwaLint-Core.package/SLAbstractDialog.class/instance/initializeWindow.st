initialize-release
initializeWindow
	
	self window: 
		((SystemWindow labelled: self windowLabel)
			model: self;
			yourself).