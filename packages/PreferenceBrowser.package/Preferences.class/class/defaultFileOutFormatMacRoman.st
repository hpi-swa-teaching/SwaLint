standard queries
defaultFileOutFormatMacRoman
	^ self
		valueOfFlag: #defaultFileOutFormatMacRoman
		ifAbsent: [false]