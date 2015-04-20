standard queries
abbreviatedBrowserButtons
	^ self
		valueOfFlag: #abbreviatedBrowserButtons
		ifAbsent: [false]