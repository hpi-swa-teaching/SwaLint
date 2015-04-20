standard queries
menuButtonInToolPane
	^ self
		valueOfFlag: #menuButtonInToolPane
		ifAbsent: [false]