get/set - flags
toggle: flagName
	"Toggle the given preference. prefSymbol must be of a boolean preference"
	
	^ self setFlag: flagName toValue: (self valueOfFlag: flagName) not