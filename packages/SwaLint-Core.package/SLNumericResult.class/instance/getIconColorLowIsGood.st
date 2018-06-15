displaying
getIconColorLowIsGood

	self thresholdSymbol = #low ifTrue: [ ^ self class iconGreen].
	self thresholdSymbol = #average ifTrue: [ ^ self class iconYellow].
	self thresholdSymbol = #high ifTrue: [ ^ self class iconOrange].
	^ self class iconRed