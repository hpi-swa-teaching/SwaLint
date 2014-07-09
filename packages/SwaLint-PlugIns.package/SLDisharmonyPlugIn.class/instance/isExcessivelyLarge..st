private
isExcessivelyLarge: aSLMethodTestObject

	^ (aSLMethodTestObject resultOf: #methodLOC) >= 
		(SLPreferences preferenceAt: #LargeMethodLOC) preferenceValue.