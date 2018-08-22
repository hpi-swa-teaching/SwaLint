private
methodHasNoSender: aSLMethodTestObject

	<slTestHidden: true
	longRuntime: false>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: (self systemNavigation allCallsOn: (aSLMethodTestObject methodSelector)) isEmpty