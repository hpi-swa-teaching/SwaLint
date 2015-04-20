standard queries
fastDragWindowForMorphic
	^ self
		valueOfFlag: #fastDragWindowForMorphic
		ifAbsent: [true]