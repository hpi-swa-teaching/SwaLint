results
highLowResult: aNumber withThresholdFor: aSymbol
	"Create a numeric result with threshold, using high-low preferences"

	^ SLNumericResult newWithValue: aNumber 
		low: ((SLPreferences preferenceAt: (aSymbol, 'Low') asSymbol) preferenceValue) 
		high: ((SLPreferences preferenceAt: (aSymbol, 'High') asSymbol) preferenceValue)
