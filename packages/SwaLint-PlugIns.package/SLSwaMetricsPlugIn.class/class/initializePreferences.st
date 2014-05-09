preferences
initializePreferences

	self addPreferences: {
		{#Boolean. #ShowSwaMetricTests. {#SwaLint}. true. 
		'Show high-level system metrics for general assessments of source code quality'. 
		false. SwaLint. #refresh}.
	}.