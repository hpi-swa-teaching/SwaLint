as yet unclassified
myCollectImplementation: aCollection condition: aConditionBlock transformation: aTransformationBlock
	|collected|
	collected := OrderedCollection new.
	aCollection do: [:anElement |
		(aConditionBlock value: anElement) 
			ifTrue: [collected add: (aTransformationBlock value: (anElement + 6))]].