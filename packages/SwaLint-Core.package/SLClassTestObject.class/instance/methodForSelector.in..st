accessing
methodForSelector: aSymbol in: aMethodCollection

	^ aMethodCollection 
		detect: [ :method | method methodName = aSymbol asString] 
		ifNone: [^ nil]