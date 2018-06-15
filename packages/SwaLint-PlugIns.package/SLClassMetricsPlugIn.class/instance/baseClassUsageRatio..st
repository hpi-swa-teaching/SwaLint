tests
baseClassUsageRatio: aSLClassTestObject

	<slTestName: 'Base Class Usage Ratio [BUR]'
	description: 'Answer the number of instance-specific members used by the measured class, divided by the instance-specific members from the base class.' >
	
	| numberOfBaseElements |

	numberOfBaseElements := self countBaseElementsOf: aSLClassTestObject.

	^ self percentageResult: ((numberOfBaseElements > 0)
		ifTrue: [(self countUsedBaseElementsOf: aSLClassTestObject) / numberOfBaseElements]
		ifFalse: [0])