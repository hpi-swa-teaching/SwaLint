standard queries
classicNavigatorEnabled
	^ self
		valueOfFlag: #classicNavigatorEnabled
		ifAbsent: [false]