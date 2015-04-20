standard queries
compressFlashImages
	^ self
		valueOfFlag: #compressFlashImages
		ifAbsent: [false]