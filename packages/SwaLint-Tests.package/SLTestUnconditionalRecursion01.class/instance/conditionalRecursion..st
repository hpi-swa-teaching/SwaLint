as yet unclassified
conditionalRecursion: var

	self doNothing.
	var = 0 ifTrue: [^ self].
	self conditionalRecursion: var - 1.
	self doNothing.