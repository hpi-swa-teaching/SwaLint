private
basicRemovePlugIn: aSLPlugInClass

	aSLPlugInClass subclassesDo: [:subclass | self basicRemovePlugIn: subclass].
	aSLPlugInClass offeredTests do: [ :each |
		self removeTest: each].