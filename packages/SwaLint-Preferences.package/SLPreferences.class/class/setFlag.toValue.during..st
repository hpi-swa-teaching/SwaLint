get/set - flags
setFlag: prefSymbol toValue: aBoolean during: aBlock
	"Set the flag to the given value for the duration of aBlock"

	(self valueOfFlag: prefSymbol) in: [:previous |
		self setFlag: prefSymbol toValue: aBoolean.
		^ aBlock ensure: [self setFlag: prefSymbol toValue: previous]].