standard queries
postscriptStoredAsEPS
	^ self
		valueOfFlag: #postscriptStoredAsEPS
		ifAbsent: [false]