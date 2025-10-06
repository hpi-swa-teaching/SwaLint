preferences
BaseClassOverridingRatioLow

	<slpreference: 'Base class overriding ratio low'
	categoryList: #(ClassMetrics)
	description: 'The low border of base class method overriding ratio for a class'
	type: #Number>
	
	 ^ BaseClassOverridingRatioLow ifNil: [ 0 ]