standard queries
useServicesInBrowserButtonBar
	^ self
		valueOfFlag: #useServicesInBrowserButtonBar
		ifAbsent: [false]