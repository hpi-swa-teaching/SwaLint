tests
offeredTests

	| allTestData |
	allTestData := Dictionary new.

	(Pragma allNamed: #slTestName:description:category: in: self),
	(Pragma allNamed: #slTestName:description: in: self),
	(Pragma allNamed: #slTestHidden: in: self),
	(Pragma allNamed: #slTestLongRuntime: in: self),
	(Pragma allNamed: #slTestDontLintClasses: in: self) do: [ :aPragma | | aTestData |
		aTestData := allTestData at: aPragma selector asString ifAbsentPut: [
			(SLTestData newFromPlugIn: self) symbol: aPragma selector; yourself. ].
		aPragma keyword == #slTestName:description:category: ifTrue: [ 
			aTestData
				name: aPragma arguments first;
				description: aPragma arguments second;
				category: aPragma arguments third. ].
		aPragma keyword == #slTestName:description: ifTrue: [ 
			aTestData
				name: aPragma arguments first;
				description: aPragma arguments second. ].
		aPragma keyword == #slTestHidden: ifTrue: [ 
			aTestData setHidden: aPragma arguments first. ].
		aPragma keyword == #slTestLongRuntime: ifTrue: [ 
			aTestData longRuntime: aPragma arguments first. ].
		aPragma keyword == #slTestDontLintClasses: ifTrue: [
			aTestData
				dontLintClasses: aPragma arguments first. ].
	].

	^ allTestData values