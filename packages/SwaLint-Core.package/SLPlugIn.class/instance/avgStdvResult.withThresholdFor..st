results
avgStdvResult: aNumber withThresholdFor: aSymbol
	"Create a numeric result with threshold, using avrg-stdev preferences"
	
	^ SLNumericResult newWithValue: aNumber 
		average: (SLPreferences preferenceAt: (aSymbol, 'AVRG') asSymbol) preferenceValue
		stdev: (SLPreferences preferenceAt: (aSymbol, 'STDEV') asSymbol) preferenceValue