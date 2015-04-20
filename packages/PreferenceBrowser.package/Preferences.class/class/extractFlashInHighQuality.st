standard queries
extractFlashInHighQuality
	^ self
		valueOfFlag: #extractFlashInHighQuality
		ifAbsent: [true]