initialize-release
initializeEnvironment

	testEnvironment := SLDefaultEnvironment new.
	tests := SL2DefaultTestMapper mapTestsFrom: testEnvironment.