support
preferencesInCategory: aCategorySymbol 
	"Answer a list of Preference objects that reside in the given category."

	^ self allPreferences select: [ :aPreference |
		aPreference categoryList anySatisfy: [ :aCategory |
			aCategory sameAs: aCategorySymbol ]]