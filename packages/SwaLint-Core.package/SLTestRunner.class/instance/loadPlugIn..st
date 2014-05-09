plugins
loadPlugIn: aSLPlugInClass
	
	| plugin |
	plugin := aSLPlugInClass new.
	self preparePlugin: plugin.
	^ plugin