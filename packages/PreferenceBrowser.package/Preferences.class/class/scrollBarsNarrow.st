standard queries
scrollBarsNarrow
	^ self
		valueOfFlag: #scrollBarsNarrow
		ifAbsent: [false]