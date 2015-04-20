standard queries
unlimitedPaintArea
	^ self
		valueOfFlag: #unlimitedPaintArea
		ifAbsent: [false]