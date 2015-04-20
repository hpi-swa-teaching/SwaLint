standard queries
allowBlockArgumentAssignment
	^ self
		valueOfFlag: #allowBlockArgumentAssignment
		ifAbsent: [false]