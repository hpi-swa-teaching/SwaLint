initialization
restoreDefaultValue
	"Try to send a reset request to the preference provider by setting the preference value to 'nil' to exploit the usual ifNil-pattern in the pragma-preference's getter.
	
	Note that this reset is silent-by-design to be as fast as possible. If you want to send out notifications, try this:
		self rawValue: self preferenceValue; notifyInformeeOfChange."

	[[self rawValue: nil] valueSupplyingAnswer: true]
		ifError: [:msg |
			Transcript
				showln: 'Failed to reset pragma preference: ', provider printString, ' >> ', getter printString;
				showln: msg].