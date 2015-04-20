standard queries
showSecurityStatus
	^ self
		valueOfFlag: #showSecurityStatus
		ifAbsent: [true]