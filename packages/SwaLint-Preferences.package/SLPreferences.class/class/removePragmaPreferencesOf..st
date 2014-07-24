pragma-preferences
removePragmaPreferencesOf: aClass

	| aPrefSymbol |

	(self preferencePragmasOf: aClass) do:
		[ :aPragma |
			aPrefSymbol := aPragma method selector asSymbol.
			self dictionaryOfPreferences removeKey: aPrefSymbol ifAbsent: [] ]