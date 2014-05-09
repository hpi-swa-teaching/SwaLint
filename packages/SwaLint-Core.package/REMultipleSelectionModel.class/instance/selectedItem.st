selections
selectedItem
	primary isZero ifTrue: [ ^nil ].
	^list at: primary.
