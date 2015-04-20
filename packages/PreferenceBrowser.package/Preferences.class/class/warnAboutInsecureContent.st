standard queries
warnAboutInsecureContent
	^ self
		valueOfFlag: #warnAboutInsecureContent
		ifAbsent: [true]