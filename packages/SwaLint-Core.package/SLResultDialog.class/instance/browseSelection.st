actions
browseSelection

	self browsable ifFalse: [^ self].
	self resultsBrowserForSelection