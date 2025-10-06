support
categoryListOfPreference: prefSymbol
	"Return a list of all categories in which the preference occurs"

	^ (self preferenceAt: prefSymbol ifAbsent: [^ Error signal: 'Preference not found!']) categoryList