preferences
BaseClassOverridingRatioHigh

	<slpreference: 'Base class overriding ratio high'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 2
	helpText: 'The high border of base class method overriding ratio for a class'>

	^ BaseClassOverridingRatioHigh ifNil: [ 3/4 ]