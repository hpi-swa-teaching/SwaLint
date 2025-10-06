map - 2. code quality - coding styles
mapReturnsIfTrue: aSLTestData
	<sl2Test: #smallLintReturnsIfTrue>

	self flag: #discuss. "could be intentional"
	^ nil
	"^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		yourself"