personalization
storePreferencesToDisk
	Cursor wait showWhile: [
		[ self storePreferencesIn: 'mySwaLint.prefs' ] on: Error do: [ :ex | self inform: 'there was an error storing your preferences to disk' ]]