as yet unclassified
instVarInAllSubclasses: aSLClassTestObject

	<slTestName:  'Instance variable defined in all subclasses'
	description: 'This test checks whether an instance variable is defined in all subclasses which could be moved to the superclass'
	category: 'Miscellaneous'>
	
	| subclasses |
	aSLClassTestObject shouldBeClass.
	
	subclasses := aSLClassTestObject testClass subclasses.
	subclasses size > 1 ifTrue: 
		[ | sels |
		sels := Bag new.
		subclasses do: [ :each | sels addAll: each instVarNames ].
		sels asSet do: 
			[ :val | 
			| count |
			count := sels occurrencesOf: val.
			count == subclasses size ifTrue: 
				[ ^self successResult: true ] ] ].
	
	^self successResult: false