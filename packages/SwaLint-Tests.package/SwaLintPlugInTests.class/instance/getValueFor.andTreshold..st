building
getValueFor: aValueSymbol andTreshold: aSymbol

	SLPreferences preferenceAt: (aSymbol, 'AVRG') asSymbol ifAbsent: 
		[^(highLowValueRules at: aValueSymbol)
			value: (plugIn preference: ((aSymbol, 'Low') asSymbol))
			value: (plugIn preference: ((aSymbol, 'High') asSymbol))].
	^(avrgValueRules at: aValueSymbol)
			value: (plugIn preference: ((aSymbol, 'AVRG') asSymbol))
			value: (plugIn preference: ((aSymbol, 'STDEV') asSymbol))