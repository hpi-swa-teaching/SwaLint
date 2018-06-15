tests
offeredTests

	^ self offeredTestsData collect: [ :data |
		SLTestData newFromArray: data plugIn: self]