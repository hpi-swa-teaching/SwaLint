standard queries
slideDismissalsToTrash
	^ self
		valueOfFlag: #slideDismissalsToTrash
		ifAbsent: [true]