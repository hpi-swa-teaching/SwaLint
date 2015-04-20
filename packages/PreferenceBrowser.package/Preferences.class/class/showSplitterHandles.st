standard queries
showSplitterHandles
	^ self
		valueOfFlag: #showSplitterHandles
		ifAbsent: [true]