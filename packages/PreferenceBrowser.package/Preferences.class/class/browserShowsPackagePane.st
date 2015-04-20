standard queries
browserShowsPackagePane
	^ self
		valueOfFlag: #browserShowsPackagePane
		ifAbsent: [false]