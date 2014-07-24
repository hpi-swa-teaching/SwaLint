private
looksLikeDispersedCoupling: aSLMethodTestObject

	^ (((aSLMethodTestObject resultOf: #methodCINT)
			> (SLPreferences preferenceAt: #ShortMemoryCap) preferenceValue) and:
		[ (aSLMethodTestObject resultOf: #methodCDISP) >= 0.5 ])