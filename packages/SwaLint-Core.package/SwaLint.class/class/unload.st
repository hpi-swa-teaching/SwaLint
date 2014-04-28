finalization
unload

	SLDefaultDialog allInstancesDo: [ :i | i close].
	SLResultDialog allInstancesDo: [ :i | i close].
	self
		unregisterInWorldMenu;
		tests: nil;
		categories: nil.
	Smalltalk garbageCollect.
