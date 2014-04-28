personalization
savePersonalPreferences
	"Save the current list of Preference settings as the user's personal choices"

	self  setParameter:#PersonalDictionaryOfSwaLintPreferences
		 to:self dictionaryOfPreferences deepCopy