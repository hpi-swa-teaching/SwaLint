user interface
textField
	^(PluggableTextMorph
		on: self
		text: #preferenceValue
		accept: #preferenceValue:)
			hideVScrollBarIndefinitely: true;
			borderColor: #inset;
			acceptOnCR: true;
			color: Color gray veryMuchLighter;
			vResizing: #rigid;
			hResizing: #spaceFill;
			height: TextStyle defaultFont height + 6;
			yourself.