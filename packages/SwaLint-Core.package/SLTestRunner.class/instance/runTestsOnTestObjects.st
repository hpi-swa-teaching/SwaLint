running
runTestsOnTestObjects

	self testObjects do: [ :testobject |
		self selectedTests do: [ :test | testobject testWith: test]].