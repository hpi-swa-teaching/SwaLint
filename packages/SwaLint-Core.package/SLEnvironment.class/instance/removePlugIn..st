updating
removePlugIn: aSLPlugInClass

	aSLPlugInClass subclassesDo: [:subclass | self removePlugIn: subclass].
	aSLPlugInClass offeredTests do: [ :each |
		self removeTest: each].
	SwaLint refreshAllDialogs.