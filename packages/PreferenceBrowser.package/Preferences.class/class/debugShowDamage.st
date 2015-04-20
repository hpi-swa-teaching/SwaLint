standard queries
debugShowDamage
	^ self
		valueOfFlag: #debugShowDamage
		ifAbsent: [false]