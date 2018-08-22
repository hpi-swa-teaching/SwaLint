finalization
unload

	SLDefaultDialog allSubInstancesDo: [ :instance | instance close].
	self unregisterInWorldMenu.