finalization
unload

	SLDefaultDialog allInstancesDo: [ :i | i close].
	SLResultDialog allInstancesDo: [ :i | i close].
	self unregisterInWorldMenu.