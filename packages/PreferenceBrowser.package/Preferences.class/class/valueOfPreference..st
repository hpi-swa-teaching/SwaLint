get/set
valueOfPreference: aPreferenceSymbol
	"Answer the value of the given preference"
	^self valueOfPreference: aPreferenceSymbol ifAbsent: []