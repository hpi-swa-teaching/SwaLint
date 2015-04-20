standard queries
showFlapsWhenPublishing
	^ self
		valueOfFlag: #showFlapsWhenPublishing
		ifAbsent: [false]