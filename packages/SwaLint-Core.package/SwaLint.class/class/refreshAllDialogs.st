initialize-release
refreshAllDialogs
	
	SLAbstractDialog subclassesDo: [ :each |
		[each allInstancesDo: [ :instance | instance refresh]] ifError: ["ignore"]].