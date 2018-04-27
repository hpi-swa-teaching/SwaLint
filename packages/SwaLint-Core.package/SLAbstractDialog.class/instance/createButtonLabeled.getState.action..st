dialogue-components
createButtonLabeled: aString getState: aState action: anAction

	| button |
	button := PluggableButtonMorph
		on: self getState: aState action: anAction.
	
	self addDependent: button.
	
	^ button
		label: (' ',aString,' ');
		onColor: self windowColorToUse lighter
		offColor: self windowColorToUse muchDarker;
		vResizing: #spaceFill;
		yourself