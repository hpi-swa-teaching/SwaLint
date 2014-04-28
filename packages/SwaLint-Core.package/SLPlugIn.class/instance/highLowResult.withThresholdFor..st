results
highLowResult: aNumber withThresholdFor: aSymbol
	"Create a numeric result with threshold, using high-low preferences"

	^ SLNumericResult newWithValue: aNumber 
		low: (self preference: (aSymbol, 'Low') asSymbol) 
		high: (self preference: (aSymbol, 'High') asSymbol)
