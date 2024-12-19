accessing
preferenceAt: aSymbol ifAbsent: aBlock 
	"Answer the Preference object at the given symbol, or the value of aBlock if not present"

	 ^preferencesDictionary at: aSymbol ifAbsent: aBlock