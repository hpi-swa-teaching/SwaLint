menu parameters
menuTitleColor
	Display depth = 1 ifTrue: [^ Color white].
	Display depth = 2 ifTrue: [^ Color gray].
	^ Parameters at: #menuTitleColor