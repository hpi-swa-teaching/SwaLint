doits
preLoadPharo200

	self storedDeprecationSetting: (Preferences valueOfPreference: #raiseDeprecatedWarnings).
	Preferences setPreference: #raiseDeprecatedWarnings toValue: false.
	