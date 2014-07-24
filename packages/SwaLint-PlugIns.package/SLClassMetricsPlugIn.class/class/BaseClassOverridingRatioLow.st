preferences
BaseClassOverridingRatioLow

	<slpreference: 'Base class overriding ratio low'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 0
	helpText: 'The low border of base class method overriding ratio for a class'>
	
	 ^ BaseClassOverridingRatioLow ifNil: [ 0 ]