standard queries
useOnlyServicesInMenu
	^ self
		valueOfFlag: #useOnlyServicesInMenu
		ifAbsent: [false]