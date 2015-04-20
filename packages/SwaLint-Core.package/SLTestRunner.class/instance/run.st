running
run

	'Running Tests...' 
		displayProgressFrom: 0 to: self testRunsNeeded
		during: [ :bar |
			self progressBar: bar;
				loadPluginsForTests;
				runTestsOnTestObjects].