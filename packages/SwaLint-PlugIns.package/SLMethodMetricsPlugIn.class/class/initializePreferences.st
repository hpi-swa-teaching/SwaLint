preferences
initializePreferences

	self addPreferences: {
		{#Boolean. #ShowMethodMetricTests. {#SwaLint}. false. 'Show the Metrics of the Method Metrics Plug-In in SwaLint'. false. SwaLint. #refresh}.
		{#Numeric. #MethodLOCAVRG. {#MethodMetrics}. 7. 'The average of lines of code of a method'}.
		{#Numeric. #MethodLOCSTDEV. {#MethodMetrics}. 3. 'The standard deviation of the lines of code of a method'}.
		{#Numeric. #MethodCYCLOLow. {#MethodMetrics}. 1. 'The low border of method CYCLO'}.
		{#Numeric. #MethodCYCLOHigh. {#MethodMetrics}. 3. 'The high border of method CYCLO'}.
	}.