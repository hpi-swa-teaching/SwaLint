factored pref panel
categoriesContainingPreference: prefSymbol
	"Return a list of all categories in which the preference occurs"

	^ (self preferenceAt: prefSymbol ifAbsent: [^ #(unclassified)]) categoryList