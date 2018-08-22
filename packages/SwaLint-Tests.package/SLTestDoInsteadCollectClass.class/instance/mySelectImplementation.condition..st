as yet unclassified
mySelectImplementation: aCollection condition: aConditionBlock
	|collected|
	collected := OrderedCollection new.
	aCollection do: [:anElement |
		(aConditionBlock value: anElement) 
			ifTrue: [collected add: (anElement)]].