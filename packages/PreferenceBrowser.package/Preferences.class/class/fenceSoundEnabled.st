standard queries
fenceSoundEnabled
	^ self
		valueOfFlag: #fenceSoundEnabled
		ifAbsent: [true]