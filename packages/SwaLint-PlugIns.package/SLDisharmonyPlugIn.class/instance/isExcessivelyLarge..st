private
isExcessivelyLarge: aSLMethodTestObject

	^ (aSLMethodTestObject resultOf: #methodLOC) >= (self preference: #LargeMethodLOC)