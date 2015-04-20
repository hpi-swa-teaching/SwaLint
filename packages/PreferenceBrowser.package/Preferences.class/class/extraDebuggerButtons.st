standard queries
extraDebuggerButtons
	^ self
		valueOfFlag: #extraDebuggerButtons
		ifAbsent: [false]