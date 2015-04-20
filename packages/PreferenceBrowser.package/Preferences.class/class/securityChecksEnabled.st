standard queries
securityChecksEnabled
	^ self
		valueOfFlag: #securityChecksEnabled
		ifAbsent: [false]