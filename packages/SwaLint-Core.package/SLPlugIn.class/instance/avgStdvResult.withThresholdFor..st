results
avgStdvResult: aNumber withThresholdFor: aSymbol
	"Create a numeric result with threshold, using avrg-stdev preferences"
	
	^ SLNumericResult newWithValue: aNumber 
		average: (self preference: (aSymbol, 'AVRG') asSymbol)
		stdev: (self preference: (aSymbol, 'STDEV') asSymbol)