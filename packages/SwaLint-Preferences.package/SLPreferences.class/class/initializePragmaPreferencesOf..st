pragma-preferences
initializePragmaPreferencesOf: aClass

	| aPrefSymbol aPreference |
	
	(self preferencePragmasOf: aClass) do:[ :aPragma |
		aPreference := self convertPragmaToPreference: aPragma.
		aPrefSymbol := aPragma method selector asSymbol.			
		self dictionaryOfPreferences at: aPrefSymbol put: aPreference. ].