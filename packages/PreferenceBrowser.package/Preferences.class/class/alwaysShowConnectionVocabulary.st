standard queries
alwaysShowConnectionVocabulary
	^ self
		valueOfFlag: #alwaysShowConnectionVocabulary
		ifAbsent: [false]