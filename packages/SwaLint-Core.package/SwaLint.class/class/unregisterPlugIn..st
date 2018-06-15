finalization
unregisterPlugIn: aSLPlugInClass

	aSLPlugInClass subclasses
		do: [ :subclass | self unregisterPlugIn: subclass].
	aSLPlugInClass unload.
