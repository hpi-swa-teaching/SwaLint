standard queries
extractFlashInHighestQuality
	^ self
		valueOfFlag: #extractFlashInHighestQuality
		ifAbsent: [false]