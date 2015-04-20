standard queries
enableLocalSave
	^ self
		valueOfFlag: #enableLocalSave
		ifAbsent: [true]