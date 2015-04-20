standard queries
multipleTextUndo
	^ self
		valueOfFlag: #multipleTextUndo
		ifAbsent: [false]