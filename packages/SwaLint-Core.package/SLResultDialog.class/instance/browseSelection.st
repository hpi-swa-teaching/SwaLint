dialogue-components
browseSelection

	self browseable ifFalse: [^ self].
	
	self environment results resultsBrowserForSelection