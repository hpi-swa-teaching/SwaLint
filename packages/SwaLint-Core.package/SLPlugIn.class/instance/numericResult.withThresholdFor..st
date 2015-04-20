results
numericResult: aNumber withThresholdFor: aSymbol
	"Create a numeric result with threshold, using avrg-stdev
	preferences or high-low preferences"

	^ (self hasPreference: (aSymbol, 'AVRG') asSymbol) 
		ifTrue: [self avgStdvResult: aNumber withThresholdFor: aSymbol]
		ifFalse: [self highLowResult: aNumber withThresholdFor: aSymbol]
