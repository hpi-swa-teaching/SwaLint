running
runTestsOnTestObjects

	self testObjects do: [ :testobject |
		self selectedTests do: [ :test | 
			ProgressNotification signal: '' extra: 'Testing ', testobject name, ' for ', test name.
			testobject testWith: test]].