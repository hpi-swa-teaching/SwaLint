running
run

	'Running Tests...' 
		displayProgressFrom: 0 to: self testRunsNeeded
		during: [ :bar |
			CurrentReadOnlySourceFiles cacheDuring: [
				self progressBar: bar;
					loadPluginsForTests;
					runTestsOnTestObjects]].