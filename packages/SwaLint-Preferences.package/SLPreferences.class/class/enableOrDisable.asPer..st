get/set
enableOrDisable: preferenceNameSymbol asPer: aBoolean
	"either enable or disable the given Preference, depending on the value of aBoolean"

	aBoolean ifTrue: [self enable: preferenceNameSymbol] ifFalse: [self disable: preferenceNameSymbol]