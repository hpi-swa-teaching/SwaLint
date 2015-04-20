standard queries
eToyLoginEnabled
	^ self
		valueOfFlag: #eToyLoginEnabled
		ifAbsent: [false]