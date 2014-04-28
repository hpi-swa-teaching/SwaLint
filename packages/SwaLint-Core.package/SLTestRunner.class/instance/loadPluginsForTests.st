preparing
loadPluginsForTests

	self selectedTests do: [ :test | 
		self loadPlugInForTest: test].