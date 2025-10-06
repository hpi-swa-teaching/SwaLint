support
categoryList
	"Return all available categories. No duplicates."

	| aSet |
	aSet := Set new.
	self allPreferences do: [ :aPreference | 
		aSet addAll: (
			aPreference categoryList collect: [ :aCategory |
				aCategory asSymbol ]) ].
	^aSet