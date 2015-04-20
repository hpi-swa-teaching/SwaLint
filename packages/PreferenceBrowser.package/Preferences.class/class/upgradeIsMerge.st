standard queries
upgradeIsMerge
	^ self
		valueOfFlag: #upgradeIsMerge
		ifAbsent: [false]