dialogue-components
createButtonBarWithNextButton: aButton

	^ self createButtonBar: { 
		self cancelButton.
		self spacer: 3.
		aButton.
		self spacer: 40.
		self optionsButton}