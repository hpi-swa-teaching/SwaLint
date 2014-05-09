debugging
checkTestSymbol: aSymbol
	"Check, whether Symbol is in Dict and warn about both cases"
	
	(self testExists: aSymbol)
		ifTrue: [ self warnOfAlreadyExists: aSymbol ]
		ifFalse: [
			self debugCr; 
				debugOut: aSymbol, ' added.'].