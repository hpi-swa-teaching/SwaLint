standard queries
changeSetVersionNumbers
	^ self
		valueOfFlag: #changeSetVersionNumbers
		ifAbsent: [true]