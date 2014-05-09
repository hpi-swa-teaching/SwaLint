running
run

	'Running Tests...' 
		displayProgressAt: Display center
		from: 0 to: self testRunsNeeded
		during: [ :bar |
			self progressBar: bar;
				loadPluginsForTests;
				runTestsOnTestObjects].