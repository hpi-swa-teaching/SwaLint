standard queries
standaloneSecurityChecksEnabled
	^ self
		valueOfFlag: #standaloneSecurityChecksEnabled
		ifAbsent: [false]