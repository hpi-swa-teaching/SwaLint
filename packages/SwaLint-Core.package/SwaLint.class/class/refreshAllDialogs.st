initialize-release
refreshAllDialogs

	[SLDefaultDialog allInstancesDo: [ :instance | instance update ]] ifError: [].
	SLDefaultDialog subclassesDo: [ :each |
		[each allInstancesDo: [ :instance | instance update ]] ifError: []].