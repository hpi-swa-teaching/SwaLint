threshold
thresholdToInt: aSymbol

	^ self thresholds indexOf: aSymbol ifAbsent: [-1]