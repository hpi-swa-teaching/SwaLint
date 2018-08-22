method tests
accessedVar: aSLMethodTestObject 
	"Number of the accessed variable"

	<slTestName: 'Accessed Variable' 
	description: 'Name of the accessed variable, for accessors only'>

	(aSLMethodTestObject resultOf: #isAccessor:) ifNegative: [
		SLWrongTypeError signal: 'Should be accessor method'].
	^ self numericResult:
		(self firstAccessedBy: aSLMethodTestObject testObject)