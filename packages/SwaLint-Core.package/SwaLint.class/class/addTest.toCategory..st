categories
addTest: aTestSymbol toCategory: aCategorySymbol
	"Associate a test and its category. If the debug mode is disabled, don't show the hidden category"
	
	((aCategorySymbol = self hiddenCategory) and: [self debug not]) ifFalse: [
		| cat |
		cat := self testCategoryFor: aCategorySymbol.
		(cat includes: aTestSymbol) ifFalse: [cat add: aTestSymbol]].