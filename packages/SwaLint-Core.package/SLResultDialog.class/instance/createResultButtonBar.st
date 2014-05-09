dialogue-components
createResultButtonBar

	^ self createButtonBar: {
		self closeButton.
		self spacer: 3.
		self runAgainButton.
		self spacer: 3.
		self browseSelectionButton.
		self spacer: 40.
		self optionsButton}