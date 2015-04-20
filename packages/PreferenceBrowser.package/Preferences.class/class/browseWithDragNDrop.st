standard queries
browseWithDragNDrop
	^ self
		valueOfFlag: #browseWithDragNDrop
		ifAbsent: [true]