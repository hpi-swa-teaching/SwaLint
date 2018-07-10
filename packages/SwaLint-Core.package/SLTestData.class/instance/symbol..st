accessing
symbol: anObject

	symbol := anObject asSymbol.
	self name: (self name ifNil: symbol).