standard queries
haloTransitions
	^ self
		valueOfFlag: #haloTransitions
		ifAbsent: [false]