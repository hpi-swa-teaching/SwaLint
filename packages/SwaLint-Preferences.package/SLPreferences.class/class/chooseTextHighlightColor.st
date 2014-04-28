text highlighting
chooseTextHighlightColor
	"Let the user choose the text-highlight color"

	ColorPickerMorph new
		choseModalityFromPreference;
		sourceHand: self currentHand;
		target: self;
		selector: #textHighlightColor:;
		originalColor: self textHighlightColor;
		putUpFor: self currentHand near: self currentHand cursorBounds