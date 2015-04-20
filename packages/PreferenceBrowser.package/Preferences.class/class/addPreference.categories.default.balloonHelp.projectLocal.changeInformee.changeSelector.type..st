add preferences
addPreference: aName categories: categoryList default: aValue balloonHelp: helpString projectLocal: localBoolean changeInformee: informeeSymbol changeSelector: aChangeSelector type: aType
	"Add or replace a preference as indicated.  Reuses the preexisting Preference object for this symbol, if there is one, so that UI artifacts that interact with it will remain valid."

	| aPreference aPrefSymbol |
	aPrefSymbol := aName asSymbol.
	aPreference := self dictionaryOfPreferences  at:aPrefSymbol
				 ifAbsent:[Preference new].
	aPreference 
		 name:aPrefSymbol
		 defaultValue:aValue
		 helpString:helpString
		 localToProject:localBoolean
		 categoryList:categoryList
		 changeInformee:informeeSymbol
		 changeSelector:aChangeSelector
		 type: aType.
	self dictionaryOfPreferences  at:aPrefSymbol  put:aPreference.
	self  compileAccessMethodForPreference:aPreference