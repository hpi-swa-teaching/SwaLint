initialize-release
refreshAllEnvironments
	
	SLEnvironment subclassesDo: [ :each |
		[each allInstancesDo: [ :instance | instance refresh]] ifError: ["ignore"]].