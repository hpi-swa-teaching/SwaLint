get/set
setPreference: prefSymbol toValue: anObject during: aBlock

	| previousValue |
	previousValue := self valueOfPreference: prefSymbol.
	self setPreference: prefSymbol toValue: anObject.
	^ aBlock ensure: [self setPreference: prefSymbol toValue: previousValue]