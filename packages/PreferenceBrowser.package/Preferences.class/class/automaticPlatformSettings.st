standard queries
automaticPlatformSettings
	^ self
		valueOfFlag: #automaticPlatformSettings
		ifAbsent: [true]