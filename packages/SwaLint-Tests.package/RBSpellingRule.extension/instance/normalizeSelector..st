*SWALint-Tests-override
normalizeSelector: aSymbolOrString
	^ self normalizeIdentifier: (aSymbolOrString asString copyReplaceAll: ':' with: ' ')