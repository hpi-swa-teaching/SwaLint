initialization
removeAllPreferences

	self dictionaryOfPreferences copy keysDo: [ :key |
		self removePreference: key].