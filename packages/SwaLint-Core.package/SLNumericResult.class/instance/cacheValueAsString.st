accessing
cacheValueAsString
	"Use the value format rule to convert my value into a string."

	^ valueAsString := self valueFormatRule 
			valueWithPossibleArgs: {self result. self thresholdSymbol}