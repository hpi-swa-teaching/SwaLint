standard queries
conversionMethodsAtFileOut
	^ self
		valueOfFlag: #conversionMethodsAtFileOut
		ifAbsent: [false]