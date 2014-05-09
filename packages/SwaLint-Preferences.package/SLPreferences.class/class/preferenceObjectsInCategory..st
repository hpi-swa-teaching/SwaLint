preferences panel
preferenceObjectsInCategory: aCategorySymbol 
	"Answer a list of Preference objects that reside in the given category, in alphabetical order"

	^ (self dictionaryOfPreferences 
		 select:[:aPreference | aPreference categoryList  includes:aCategorySymbol]) 
			 asSortedCollection:
				[:pref1 :pref2 | 
				pref1 viewRegistry viewOrder  <pref2 viewRegistry viewOrder  or:
						[pref1 viewRegistry viewOrder  =pref2 viewRegistry viewOrder 
							 &(pref1 name  <pref2 name)]]