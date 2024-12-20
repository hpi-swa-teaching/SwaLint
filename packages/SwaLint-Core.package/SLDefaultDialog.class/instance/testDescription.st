accessing-test
testDescription
	
	^ self testSelected = 0
		ifTrue: ['There is no test chosen.']
		ifFalse: [
			| test |
			test := self tests at: self testSelected.
			test name, ':', Character cr,
				(test description
					ifNil: ['There is no description for the chosen test.']
					ifNotNil: [test description]), Character cr,
				(test longRuntime
					ifFalse: ['']
					ifTrue: ['', 'This test may require more time than other tests, hence the * in the name.' asText allBold, Character cr]),
				Character cr,
				'PlugIn: ', test plugIn, Character cr,
				'ID: #', test key ]