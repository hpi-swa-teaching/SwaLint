text highlighting
chooseKeyboardFocusColor
	"Let the user indicate what color he wishes to have used for keyboard-focus feedback"

	ColorPickerMorph new
		choseModalityFromPreference;
		sourceHand: self currentHand;
		target: self;
		selector: #keyboardFocusColor:;
		originalColor: self keyboardFocusColor;
		putUpFor: self currentHand near: self currentHand cursorBounds