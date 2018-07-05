building
buildWith: aBuilder

	window := self buildWindowWith: aBuilder specs: {
		self buttonsFrame -> [self buildButtonsWith: aBuilder].	
		self resultsFrame -> [self buildDescriptionWith: aBuilder].
	}.
	window := aBuilder build: window.
	^ window