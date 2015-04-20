submorphs - preference list
preferenceList 
	^preferenceList ifNil:
		[preferenceList := ScrollPane new
			color: Color white;
			borderInset;
			vResizing: #spaceFill;
			hResizing: #spaceFill.
		preferenceList scroller
			on: #mouseEnter send: #value: 
				to: [:event | event hand newKeyboardFocus: preferenceList scroller];
			on: #keyStroke send: #keyPressed: to: self.
		preferenceList.]