standard queries
decorateBrowserButtons
	^ self
		valueOfFlag: #decorateBrowserButtons
		ifAbsent: [false]