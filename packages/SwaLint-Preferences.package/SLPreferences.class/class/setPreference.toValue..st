get/set
setPreference: prefSymbol toValue: anObject
	"Set the given preference to the given value, and answer that value"

	^ (self
		preferenceAt: prefSymbol
		ifAbsent: [^ self addPreference: prefSymbol default: anObject])
			preferenceValue: anObject;
			yourself