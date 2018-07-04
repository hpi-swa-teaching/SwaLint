displaying
valueAsString
	
	| dotsAfterReturnPreferencesString |
	
	dotsAfterReturnPreferencesString := ''.
	(self testData symbol = #dotAfterReturn:) ifTrue: [
		(SLCodingStylesPlugIn NoDotAfterMethodEnd) ifTrue: [
			dotsAfterReturnPreferencesString := '; Dots are bad']
		ifFalse: [
			dotsAfterReturnPreferencesString := '; Dots are good']].
		
	^ (self valueFormatRule valueWithPossibleArgs: {self result. self thresholdSymbol}), dotsAfterReturnPreferencesString