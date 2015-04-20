standard queries
turnOffPowerManager
	^ self
		valueOfFlag: #turnOffPowerManager
		ifAbsent: [false]