building
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		self buttonsFrame -> [self buildButtonsWith: aBuilder].	
		self resultsFrame -> [self buildResultCountWith: aBuilder].
	}.
	windowSpec closeAction: #close.
	self window: (aBuilder build: windowSpec).
	
	 ^ self window