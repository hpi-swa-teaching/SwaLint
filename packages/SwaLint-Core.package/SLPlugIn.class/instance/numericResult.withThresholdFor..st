results
numericResult: aNumber withThresholdFor: aSymbol
	"Create a numeric result with threshold, using avrg-stdev
	preferences or high-low preferences"

	
	SLPreferences preferenceAt: (aSymbol, 'AVRG') asSymbol ifAbsent: 
		[^ self highLowResult: aNumber withThresholdFor: aSymbol].
	^ self avgStdvResult: aNumber withThresholdFor: aSymbol