as yet unclassified
subclassesIfAvailable: aSymbol

	^ self environment 
		at: aSymbol
		ifPresent: [:cls | cls allSubclasses]
		ifAbsent: [#()]