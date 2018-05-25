as yet unclassified
myCollectImplementation: aCollection transformation: aTransformationBlock
	|collected|
	collected := OrderedCollection new.
	aCollection do: [:anElement |
		collected add: (aTransformationBlock value: (anElement + 6))].