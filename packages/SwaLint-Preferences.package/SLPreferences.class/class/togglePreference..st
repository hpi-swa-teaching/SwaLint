get/set
togglePreference: prefSymbol
	"Toggle the given preference. prefSymbol must be of a boolean preference"
	(self preferenceAt: prefSymbol ifAbsent: [self error: 'unknown preference: ', prefSymbol]) togglePreferenceValue