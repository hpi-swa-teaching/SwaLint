standard queries
caseSensitiveFinds
	^ self
		valueOfFlag: #caseSensitiveFinds
		ifAbsent: [false]