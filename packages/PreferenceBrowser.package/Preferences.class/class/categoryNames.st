preferences panel
categoryNames
	| aSet |
	aSet := Set new.
	self dictionaryOfPreferences  do:
			[:aPreference | 
			aSet  addAll:(aPreference categoryList 
						 collect:[:aCategory | aCategory asSymbol])].
	^ aSet