accessing
preferenceAt: aSymbol 
	"Answer the Preference object at the given symbol, or nil if not there"

	^self preferenceAt: aSymbol ifAbsent: [ nil ]