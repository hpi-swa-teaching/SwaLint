standard queries
useSmartLabels
	^ self
		valueOfFlag: #useSmartLabels
		ifAbsent: [false]