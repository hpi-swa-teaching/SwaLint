text highlighting
chooseInsertionPointColor
	"Let the user indicate what color he wishes to have used for insertion points in text"

	ColorPickerMorph new
		choseModalityFromPreference;
		sourceHand: self currentHand;
		target: self;
		selector: #insertionPointColor:;
		originalColor: self insertionPointColor;
		putUpFor: self currentHand near: self currentHand cursorBounds