results
testWith: aTest
	"Test me if necessary"

	CurrentReadOnlySourceFiles cacheDuring: [	
		| test |
		test := self testData: aTest.
		^ self results at: test ifAbsentPut: [
			self addResultOf: test]]