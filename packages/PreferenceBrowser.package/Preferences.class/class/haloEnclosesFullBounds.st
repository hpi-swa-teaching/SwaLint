standard queries
haloEnclosesFullBounds
	^ self
		valueOfFlag: #haloEnclosesFullBounds
		ifAbsent: [false]