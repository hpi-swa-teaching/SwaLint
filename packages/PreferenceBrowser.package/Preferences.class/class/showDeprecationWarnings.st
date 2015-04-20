standard queries
showDeprecationWarnings
	^ self
		valueOfFlag: #showDeprecationWarnings
		ifAbsent: [false]