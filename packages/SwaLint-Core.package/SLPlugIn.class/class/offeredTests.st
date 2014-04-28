tests
offeredTests

	^ self offeredTestsData collect: [ :data |
		 SLTestData newFromData: data plugIn: self]