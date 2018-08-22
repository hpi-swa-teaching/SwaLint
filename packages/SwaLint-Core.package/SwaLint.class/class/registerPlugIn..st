world menu
registerPlugIn: aSLPlugInClass

	aSLPlugInClass subclasses
		do: [ :subclass | self registerPlugIn: subclass.].
	aSLPlugInClass install.
