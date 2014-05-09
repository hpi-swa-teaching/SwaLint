get/set
valueOfPreference: aPreferenceSymbol ifAbsent: booleanValuedBlock
	"Answer the value of the given preference"
	^ (self preferenceAt: aPreferenceSymbol ifAbsent: [^ booleanValuedBlock value]) preferenceValue