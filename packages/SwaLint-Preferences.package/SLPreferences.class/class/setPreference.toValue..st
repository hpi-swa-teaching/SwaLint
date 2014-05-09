get/set
setPreference: prefSymbol toValue: aBoolean
	"Set the given preference to the given value, and answer that value"

	^ (self preferenceAt: prefSymbol ifAbsent: [^ aBoolean]) preferenceValue: aBoolean