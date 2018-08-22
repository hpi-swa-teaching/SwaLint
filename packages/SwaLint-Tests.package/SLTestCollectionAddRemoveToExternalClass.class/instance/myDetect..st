as yet unclassified
myDetect: aCollection
	aCollection do: [:each |
		(each < 3.141926535897932384626433882795028841971) ifTrue: [^each]].