misc
setFlag: prefSymbol toValue: aBoolean during: aBlock
	"Set the flag to the given value for the duration of aBlock"

	| existing |
	existing := self valueOfFlag: prefSymbol.
	existing == aBoolean ifFalse: [self setPreference: prefSymbol toValue: aBoolean].
	aBlock value.
	existing == aBoolean ifFalse: [self setPreference: prefSymbol toValue: existing]