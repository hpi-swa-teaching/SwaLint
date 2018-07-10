method tests
calledClasses: aSLMethodTestObject

	<slTestName: nil
	description: nil>
	<slTestHidden: true>
	<slTestLongRuntime: true>

	| classNames |
	aSLMethodTestObject shouldBeMethod.
	classNames := Set new.
	(aSLMethodTestObject testObject ) messages do: 
		[:selector |
		classNames addAll: 
			((aSLMethodTestObject testObject methodClass allCallsOn: selector) collect: 
				[:methodReference | methodReference className])].
	^self collectionResult: classNames