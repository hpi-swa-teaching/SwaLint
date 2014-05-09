dialogue-components
createButtonLabeled: aString getState: aState action: anAction

	| button |
	button := PluggableButtonMorph
		on: self getState: aState action: anAction.
	
	self addDependent: button.
	
	^ button
		label: (' ',aString,' ');
		onColor: self defaultBackgroundColor lighter
		offColor: self defaultBackgroundColor muchDarker;
		vResizing: #spaceFill;
		yourself