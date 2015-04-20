personalization
savePersonalPreferences
	"Save the current list of Preference settings as the user's personal choices"

	self  setParameter:#PersonalDictionaryOfPreferences
		 to:self dictionaryOfPreferences deepCopy