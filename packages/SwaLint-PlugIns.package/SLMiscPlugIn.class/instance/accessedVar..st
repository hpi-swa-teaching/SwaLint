method tests
accessedVar: aSLMethodTestObject 
	"Number of the accessed variable"

	(aSLMethodTestObject resultOf: #isAccessor) ifNegative: [
		SLWrongTypeError signal: 'Should be accessor method'].
	^ self numericResult:
		(self firstAccessedBy: aSLMethodTestObject testObject)