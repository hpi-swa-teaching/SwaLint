standard queries
inlineServicesInMenu
	^ self
		valueOfFlag: #inlineServicesInMenu
		ifAbsent: [true]