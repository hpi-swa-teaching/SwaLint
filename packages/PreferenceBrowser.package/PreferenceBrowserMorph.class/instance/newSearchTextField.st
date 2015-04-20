submorphs - search panel
newSearchTextField
	| ptm |
	ptm := PluggableTextMorph
		on: self model
		text: #searchPatternNeverTriggered
		accept: #searchPattern:.
	ptm
		hideVScrollBarIndefinitely: true;
		borderInset;
		color: Color white;
		vResizing: #rigid;
		hResizing: #spaceFill;
		height: TextStyle defaultFont height * 2;
		acceptOnCR: true;
		onKeyStrokeSend: #value to: [ ptm hasUnacceptedEdits ifTrue: [ ptm accept ] ].
	^ptm.