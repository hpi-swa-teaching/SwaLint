standard queries
balloonHelpInMessageLists
	^ self
		valueOfFlag: #balloonHelpInMessageLists
		ifAbsent: [false]