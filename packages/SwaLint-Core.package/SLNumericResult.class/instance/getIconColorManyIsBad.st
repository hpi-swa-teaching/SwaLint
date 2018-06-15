displaying
getIconColorManyIsBad

	self thresholdSymbol = #tooMany ifTrue: [ ^ self class iconRed].
	self thresholdSymbol = #many ifTrue: [ ^ self class iconGreen].
	self thresholdSymbol = #several ifTrue: [ ^ self class iconYellow].
	^ self class iconGreen