standard queries
dismissAllOnOptionClose
	^ self
		valueOfFlag: #dismissAllOnOptionClose
		ifAbsent: [false]