accessing
errorStack

	^ self subErrorStack
		addFirst: self;
		yourself