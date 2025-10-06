add/remove
removeAllPreferencesSuchThat: block

	self atomicUpdatePreferences: [ :copyOfDictionaryOfPreferences |
		| map |
		map := copyOfDictionaryOfPreferences select: block.
		map keysDo: [ :prefName |
			copyOfDictionaryOfPreferences removeKey: prefName]]