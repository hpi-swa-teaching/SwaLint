accessing-test
testDescription
	
	| test |
	^ descriptionCollection isEmpty
		ifTrue: ['There is no test chosen.']
		ifFalse: [
			test := descriptionCollection last.
			test name, ':', Character cr,
				(test description
					ifNil: ['There is no description for the chosen test.']
					ifNotNil: [test description]), Character cr,
				(test longRuntime
					ifFalse: ['']
					ifTrue: ['', 'This test may require more time than other tests, hence the * in the name.' asText allBold, Character cr]),
				Character cr,
				'PlugIn: ', test plugIn, Character cr,
				'ID: #', (test symbol readStream upTo: $:) ]