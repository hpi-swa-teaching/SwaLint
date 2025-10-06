running
run

	self testEnvironment
		selectedTests: (self tests collect: #testData);
		selectedClasses: self target classes.
	resultEnvironment := self testRunnerClass onEnvironment: self testEnvironment.
	results := resultEnvironment results gather: [:resultData |
		self tests
			detect: [:test | test testData key = resultData testData key]
			ifFound: [:test | resultData asSL2ResultsFor: test]
			ifNone: [#()]].