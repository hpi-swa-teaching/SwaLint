running
setUp
	
	|testDictionary|
	
	plugIn := self plugInClass new.
	
	avrgValueRules := (IdentityDictionary new).
	avrgValueRules addAll:
			{(#low -> [:avrg :stdev | (avrg - stdev)]).
			(#average -> [:avrg :stdev | avrg]).
			(#high -> [:avrg :stdev | (avrg + stdev)]).
			(#veryHigh -> [:avrg :stdev | ((avrg + stdev)*1.5)])}.
	highLowValueRules := Dictionary new.
	highLowValueRules addAll:
			{(#low -> [:low :high | low]).
			(#average -> [:low :high | ((low + high)/2)]).
			(#high -> [:low :high | high]).
			(#veryHigh -> [:low :high | (high*1.5)])}.
	
	testDictionary := (Dictionary new).	
	testRunner := (SLTestRunner new) testDictionary: testDictionary.
	
	testSystem := SLSystemTestObject new.
	testSystem testRunner: testRunner.
	