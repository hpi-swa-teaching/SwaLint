plugins
reloadPlugIn: aSLPlugInClass

	self addPlugIn: aSLPlugInClass.
	aSLPlugInClass subclassesDo: [ :subclass |
			self reloadPlugIn: subclass].

	
