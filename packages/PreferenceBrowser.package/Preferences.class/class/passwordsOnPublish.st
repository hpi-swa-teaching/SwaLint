standard queries
passwordsOnPublish
	^ self
		valueOfFlag: #passwordsOnPublish
		ifAbsent: [false]