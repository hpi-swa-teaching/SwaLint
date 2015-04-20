standard queries
showDirectionHandles
	^ self
		valueOfFlag: #showDirectionHandles
		ifAbsent: [false]