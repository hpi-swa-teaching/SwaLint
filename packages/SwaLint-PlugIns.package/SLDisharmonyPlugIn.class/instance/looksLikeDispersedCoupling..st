private
looksLikeDispersedCoupling: aSLMethodTestObject

	^ ((aSLMethodTestObject resultOf: #methodCINT:) > self class ShortMemoryCap and:
		[(aSLMethodTestObject resultOf: #methodCDISP:) >= 0.5])