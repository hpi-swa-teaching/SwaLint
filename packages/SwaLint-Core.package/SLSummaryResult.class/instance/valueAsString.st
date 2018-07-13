displaying
valueAsString
	
	| dotsAfterReturnPreferencesString |
	
	dotsAfterReturnPreferencesString := ''.
	(self testData symbol = #dotAfterReturn:) ifTrue: [
		(SLCodingStylesPlugIn NoDotAfterMethodEnd) ifTrue: [
			dotsAfterReturnPreferencesString := '; Due to your preferences, dots are treated as bad thing']
		ifFalse: [
			dotsAfterReturnPreferencesString := '; Due to your preferences, dots are treated as good thing']].
		
	^ (self valueFormatRule valueWithPossibleArgs: {self result. self thresholdSymbol}), dotsAfterReturnPreferencesString