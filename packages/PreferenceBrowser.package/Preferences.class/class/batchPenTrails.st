standard queries
batchPenTrails
	^ self
		valueOfFlag: #batchPenTrails
		ifAbsent: [false]