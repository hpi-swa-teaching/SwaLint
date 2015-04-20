standard queries
showDirectionForSketches
	^ self
		valueOfFlag: #showDirectionForSketches
		ifAbsent: [false]