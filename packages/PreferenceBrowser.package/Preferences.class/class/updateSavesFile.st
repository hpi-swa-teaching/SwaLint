standard queries
updateSavesFile
	^ self
		valueOfFlag: #updateSavesFile
		ifAbsent: [false]