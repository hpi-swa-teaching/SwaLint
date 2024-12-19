updating
removePlugIn: aSLPlugInClass

	self basicRemovePlugIn: aSLPlugInClass.
	self changed: #plugIns.