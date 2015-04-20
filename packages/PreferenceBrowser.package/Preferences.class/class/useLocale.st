standard queries
useLocale
	^ self
		valueOfFlag: #useLocale
		ifAbsent: [false]