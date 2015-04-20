preferences panel
preferenceObjectsInCategory: aCategorySymbol 
	"Answer a list of Preference objects that reside in the given category, in alphabetical order"

	^ (self dictionaryOfPreferences 
		 select:[:aPreference | aPreference categoryList  includes:aCategorySymbol])