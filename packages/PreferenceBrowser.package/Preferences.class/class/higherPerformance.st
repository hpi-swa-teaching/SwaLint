standard queries
higherPerformance
	^ self
		valueOfFlag: #higherPerformance
		ifAbsent: [false]