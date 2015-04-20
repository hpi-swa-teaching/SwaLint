standard queries
honorDesktopCmdKeys
	^ self
		valueOfFlag: #honorDesktopCmdKeys
		ifAbsent: [true]