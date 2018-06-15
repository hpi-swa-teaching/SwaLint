accessing-test
testDescription
	
	| test |
	^ descriptionCollection isEmpty
		ifTrue: ['There is no test chosen.']
		ifFalse: [
			test := descriptionCollection last.
			test name, ':',Character cr, (test description
				ifNil: ['There is no description for the chosen test.']
				ifNotNil: [test description])]