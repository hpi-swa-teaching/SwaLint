accessing
variableForSelector: aSymbol
	"Answer variable testObjects whose variable selector corresponds to aSymbol"
	
	^ self variableForSelector: aSymbol in: self allVariables