testing
testMagicNumbers

	self 
		test: #magicNumbers
		on: {SLDummyClass03. SLDummyClass0. SLDummyClass01. SLFixtureClassBMagicNumbers}
		expectedResults: {3. 3. 0. 0}.
