doits
postLoadPharo200

	self postLoadFor200.
	Preferences setPreference: #raiseDeprecatedWarnings toValue: self storedDeprecationSetting.
	
