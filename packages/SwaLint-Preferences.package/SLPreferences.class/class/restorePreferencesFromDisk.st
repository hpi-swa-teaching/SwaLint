initialization - save/load
restorePreferencesFromDisk
	(FileDirectory default fileExists: 'my.prefs')
		ifTrue: [ Cursor wait showWhile: [
			[ self loadPreferencesFrom: 'my.prefs' ] on: Error do: [ :ex | self inform: 'there was an error restoring the preferences' ]
		] ]
		ifFalse: [ self inform: 'you haven''t saved your preferences yet!' ].
	