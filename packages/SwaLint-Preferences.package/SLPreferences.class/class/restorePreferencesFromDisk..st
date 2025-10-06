initialization - save/load
restorePreferencesFromDisk: aFile 
	Cursor wait
		showWhile: [[self loadPreferencesFrom: aFile]
				on: Error
				do: [:ex | self inform: 'there was an error restoring the preferences' translated]]