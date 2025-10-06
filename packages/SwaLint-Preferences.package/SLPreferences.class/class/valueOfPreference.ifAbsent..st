get/set
valueOfPreference: aPreferenceSymbol ifAbsent: block
	"Answer the value of the given preference"
	^ (self preferenceAt: aPreferenceSymbol ifAbsent: [^ block value]) preferenceValue