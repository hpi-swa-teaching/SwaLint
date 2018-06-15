tests
offeredTests

	| allTestData |
	allTestData := Dictionary new.
	(Pragma allNamed: #slTestName:description: in: self),
	(Pragma allNamed: #slTestHidden:longRuntime: in: self) do: [ :aPragma | | aTestData |
		aTestData := allTestData at: aPragma selector asString ifAbsentPut: [ SLTestData newFromPlugIn: self ].
			aPragma keyword == #slTestName:description: ifTrue: [ 
				aTestData setSelector: aPragma selector 
					name: aPragma arguments first 
					description: aPragma arguments second 
					hidden: nil 
					longRuntime: nil].
			aPragma keyword == #slTestHidden:longRuntime: ifTrue: [ 
				aTestData setSelector: aPragma selector 
					name: nil 
					description: nil 
					hidden: aPragma arguments first 
					longRuntime: aPragma arguments second ].
	].
	^ allTestData values