initialization - save/load
storePreferencesToDisk
	Cursor wait showWhile: [
		[ self storePreferencesIn: 'my.prefs' ] on: Error do: [ :ex | self inform: 'there was an error storing your preferences to disk' ]]