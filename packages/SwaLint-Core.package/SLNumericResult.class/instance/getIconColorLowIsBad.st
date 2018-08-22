displaying
getIconColorLowIsBad

	self thresholdSymbol = #low ifTrue: [ ^ self class iconRed].
	self thresholdSymbol = #average ifTrue: [ ^ self class iconOrange].
	self thresholdSymbol = #high ifTrue: [ ^ self class iconYellow].
	^ self class iconGreen