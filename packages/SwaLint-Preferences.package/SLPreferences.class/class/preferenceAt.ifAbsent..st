preference-object access
preferenceAt: aSymbol ifAbsent: aBlock 
	"Answer the Preference object at the given symbol, or the value of aBlock if not present"

	^ self dictionaryOfPreferences  at:aSymbol  ifAbsent:[aBlock value]