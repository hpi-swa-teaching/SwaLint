get/set - flags
valueOfFlag: aFlagName
	"Utility method for all the preferences that are boolean, and for backward compatibility"
	^self valueOfFlag: aFlagName ifAbsent: [false]