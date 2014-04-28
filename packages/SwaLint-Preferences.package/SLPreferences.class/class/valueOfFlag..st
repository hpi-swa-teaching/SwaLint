get/set
valueOfFlag: aFlagName
	"Utility method for all the preferences that are boolean, and for backward compatibility"
	^self valueOfPreference: aFlagName ifAbsent: [false]