standard queries
automaticKeyGeneration
	^ self
		valueOfFlag: #automaticKeyGeneration
		ifAbsent: [false]