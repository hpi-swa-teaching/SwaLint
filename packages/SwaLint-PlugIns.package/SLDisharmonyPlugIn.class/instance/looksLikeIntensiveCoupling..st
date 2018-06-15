private
looksLikeIntensiveCoupling: aSLMethodTestObject

	^ 	(((aSLMethodTestObject resultOf: #methodCINT:)> self class ShortMemoryCap and:
		[(aSLMethodTestObject resultOf: #methodCDISP:) < 0.5])
	or:
		[((aSLMethodTestObject resultOf: #methodCINT:) > #few and:
		[(aSLMethodTestObject resultOf: #methodCDISP:) < 0.25])])