preferences
initializePreferences

	self addPreferences: {
		{#Boolean. #ShowClassMetricTests. {#SwaLint}. false. 'Show the Metrics of the Class Metrics Plug-In in SwaLint'. false. SwaLint. #refresh}.
		{#Numeric. #AverageLOCperMethodAVRG. {#ClassMetrics}. 7. 'The average of the mean lines of code of the methods in one class'}.
		{#Numeric. #AverageLOCperMethodSTDEV. {#ClassMetrics}. 3. 'The standard deviation of the mean lines of code of the methods in one class'}.
		{#Numeric. #ClassLOCAVRG. {#ClassMetrics}. 200. 'The average of lines of code of a class'}.
		{#Numeric. #ClassLOCSTDEV. {#ClassMetrics}. 100. 'The standard deviation of the lines of code of a class'}.
		{#Numeric. #WMCAVRG. {#ClassMetrics}. 25. 'The average weighted method count for a class'}.
		{#Numeric. #WMCSTDEV. {#ClassMetrics}. 10. 'The standard deviation of the weighted method count for a class'}.
		{#Numeric. #BaseClassOverridingRatioLow. {#ClassMetrics}. 0. 'The low border of base class method overriding ratio for a class'}.
		{#Numeric. #BaseClassOverridingRatioHigh. {#ClassMetrics}. 2. 'The high border of base class method overriding ratio for a class'}.
		"{#Numeric. #NumberOfAccessorMethodsLow. {#ClassMetrics}. 2. 'The low border of number of accessor methods for a class'}.
		{#Numeric. #NumberOfAccessorMethodsHigh. {#ClassMetrics}. 6. 'The high border of number of accessor methods for a class'}."
		{#Numeric. #NumberOfInstanceMethodsLow. {#ClassMetrics}. 5. 'The low border of number of instance methods for a class'}.
		{#Numeric. #NumberOfInstenceMethodsHigh. {#ClassMetrics}. 40. 'The high border of number of instance methods for a class'}.
		{#Numeric. #NumberOfClassMethodsLow. {#ClassMetrics}. 3. 'The low border of number of class methods for a class'}.
		{#Numeric. #NumberOfClassMethodsHigh. {#ClassMetrics}. 20. 'The high border of number of class methods for a class'}.
		{#Numeric. #NumberOfMethodsLow. {#ClassMetrics}. 8. 'The low border of number of methods for a class'}.
		{#Numeric. #NumberOfMethodsHigh. {#ClassMetrics}. 60. 'The high border of number of methods for a class'}.
"		{#Numeric. #a. {#ClassMetrics}. 35. ''}."
	}.