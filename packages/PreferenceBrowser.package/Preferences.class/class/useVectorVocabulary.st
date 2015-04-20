standard queries
useVectorVocabulary
	^ self
		valueOfFlag: #useVectorVocabulary
		ifAbsent: [false]