user interface
colorSwatch
	^UpdatingRectangleMorph new
		target: self preference;
		getSelector: #preferenceValue;
		putSelector: #preferenceValue:;
		extent: 22@22;
		setBalloonText: 'click here to change the color' translated;
		yourself.