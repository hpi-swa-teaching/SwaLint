standard queries
keepTickingWhilePainting
	^ self
		valueOfFlag: #keepTickingWhilePainting
		ifAbsent: [false]