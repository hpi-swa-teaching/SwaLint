standard queries
areaFillsAreTolerant
	^ self
		valueOfFlag: #areaFillsAreTolerant
		ifAbsent: [false]