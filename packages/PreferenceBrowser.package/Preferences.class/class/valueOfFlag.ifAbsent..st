get/set
valueOfFlag: aFlagName ifAbsent: booleanValuedBlock
	"the same as in #valueOfFlag:"
	^self valueOfPreference: aFlagName ifAbsent: booleanValuedBlock.