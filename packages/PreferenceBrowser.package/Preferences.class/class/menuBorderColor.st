menu parameters
menuBorderColor
	Display depth <= 2 ifTrue: [^ Color black].
	^ Parameters at: #menuBorderColor