plugins
removePlugIn: aSLPlugInClass

	aSLPlugInClass offeredTests do: [ :each |
		self removeTest: each].
	self refresh.