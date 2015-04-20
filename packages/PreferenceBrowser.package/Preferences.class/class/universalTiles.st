standard queries
universalTiles
	^ self
		valueOfFlag: #universalTiles
		ifAbsent: [false]