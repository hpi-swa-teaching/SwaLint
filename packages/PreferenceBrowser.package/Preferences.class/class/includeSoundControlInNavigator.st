standard queries
includeSoundControlInNavigator
	^ self
		valueOfFlag: #includeSoundControlInNavigator
		ifAbsent: [false]