preference-object access
preferenceAt: aSymbol 
	"Answer the Preference object at the given symbol, or nil if not there"

	^ self dictionaryOfPreferences  at:aSymbol  ifAbsent:[nil]