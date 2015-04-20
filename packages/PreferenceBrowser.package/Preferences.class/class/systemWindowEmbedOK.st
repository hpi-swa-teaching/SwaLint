standard queries
systemWindowEmbedOK
	^ self
		valueOfFlag: #systemWindowEmbedOK
		ifAbsent: [false]