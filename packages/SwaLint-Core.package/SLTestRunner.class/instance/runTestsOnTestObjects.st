running
runTestsOnTestObjects

	(self testObjects sorted: [:x :y | x compareSafely: y]) do: [ :testObject | "sorting for fewer UI updates (previously made up 90% of the test running time!)"
		self selectedTests do: [ :test | 
			ProgressNotification signal: '' extra: 'Testing ', testObject name", ' for ', test name". "disabled for fewer UI updates"
			testObject testWith: test.
			self processed: test for: testObject]]