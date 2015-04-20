standard queries
infiniteUndo
	^ self
		valueOfFlag: #infiniteUndo
		ifAbsent: [false]