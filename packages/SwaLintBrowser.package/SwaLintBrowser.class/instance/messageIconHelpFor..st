accessing - toolbuilder
messageIconHelpFor: aSelector

	self class showMessageIcons ifFalse: [^ String empty].

	^ ToolIconHelp iconHelpNamed: (ToolIcons
		iconForClass: self selectedClassOrMetaClass
		selector: aSelector)