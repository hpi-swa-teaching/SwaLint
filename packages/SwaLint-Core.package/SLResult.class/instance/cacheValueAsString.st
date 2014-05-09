initialize-release
cacheValueAsString
	"Use the value format rule to convert my value into a string."

	^ valueAsString := self valueFormatRule 
			valueWithPossibleArgument: self content