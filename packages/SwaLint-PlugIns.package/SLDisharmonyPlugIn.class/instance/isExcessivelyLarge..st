private
isExcessivelyLarge: aSLMethodTestObject

	^ (aSLMethodTestObject resultOf: #methodLOC:) >= self class LargeMethodLOC