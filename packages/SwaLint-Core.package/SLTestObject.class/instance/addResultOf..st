results
addResultOf: aSLTestData
	"Run the test and store the result"

	^ self 
		addResult: 
			(self testRunner test: self with: aSLTestData)
		forTestData: aSLTestData