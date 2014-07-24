accessing
variableForSelector: aSymbol in: aVariableCollection

	^ aVariableCollection 
		detect: [ :variable | variable variableName = aSymbol asString ] 
		ifNone: [^ nil ]