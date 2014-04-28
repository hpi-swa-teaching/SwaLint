accessing
instanceMethodForSelector: aSymbol
	"Answer method testObjects which method selectors correspond to aSymbol"
	
	^ self methodForSelector: aSymbol in: self instanceMethods