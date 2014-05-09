plugins
plugInFor: aPluginClass
	"Find PlugIn instance or load it"

	^ self loadedPlugIns 
		at: aPluginClass 
		ifAbsentPut: [self loadPlugIn: aPluginClass]