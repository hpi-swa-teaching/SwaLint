standard queries
typeCheckingInTileScripting
	^ self
		valueOfFlag: #typeCheckingInTileScripting
		ifAbsent: [true]