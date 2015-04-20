standard queries
preserveTrash
	^ self
		valueOfFlag: #preserveTrash
		ifAbsent: [false]