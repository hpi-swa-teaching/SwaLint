private
runTests

	| testRunner |
	testRunner := self runnerClass on: self target.
	self tests: testRunner tests.
	testRunner run.
	self results: testRunner results.