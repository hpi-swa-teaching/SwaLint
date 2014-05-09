plugins
addTest: aSLTestData
	"Register a test symbol and the related plug-in class in a category."

	(self
		checkTestSymbol: aSLTestData symbol;
		addTest: aSLTestData symbol toCategory: aSLTestData category;
		tests) at: aSLTestData symbol put: aSLTestData.