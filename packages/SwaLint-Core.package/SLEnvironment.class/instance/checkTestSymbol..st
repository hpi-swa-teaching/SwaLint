SwaLint
checkTestSymbol: aSymbol
	"Check, whether Symbol is in Dict and warn about both cases"
	
	(self testExists: aSymbol)
		ifTrue: [ self warnOfAlreadyExists: aSymbol ]
		ifFalse: [
			SwaLint debugCr; 
				debugOut: aSymbol, ' added.'].