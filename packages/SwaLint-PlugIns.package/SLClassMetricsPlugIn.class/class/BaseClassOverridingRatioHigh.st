preferences
BaseClassOverridingRatioHigh

	<slpreference: 'Base class overriding ratio high'
	categoryList: #(ClassMetrics)
	description: 'The high border of base class method overriding ratio for a class'
	type: #Number>

	^ BaseClassOverridingRatioHigh ifNil: [ 3/4 ]