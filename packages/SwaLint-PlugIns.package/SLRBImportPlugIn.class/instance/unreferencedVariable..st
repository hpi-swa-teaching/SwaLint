as yet unclassified
unreferencedVariable: aSLClassTestObject

	<slTestName:  'Unreferenced variables'
	description: 'Check for (class and instance) variables not referenced. If a variable is not used in a class, it should be deleted'
	category: 'Unnecessary code'>

	| checkClassHelper |

	checkClassHelper := [ :checkedClass |
		| allSubclasses |

		allSubclasses := checkedClass withAllSubclasses.
		checkedClass instVarNames do: 
			[ :each | 
			allSubclasses 
				detect: [ :class | (class whichSelectorsAccess: each) isEmpty not ]
				ifNone: 
					[ ^self successResult: true ] ] ].

	aSLClassTestObject shouldBeClass.

	checkClassHelper value: (aSLClassTestObject testClass).
	checkClassHelper value: (aSLClassTestObject testClass class).

	^self successResult: false