preferences
AverageLOCperMethodAVRG

	<slpreference: 'Average LOC per method average'
	categoryList: #(ClassMetrics)
	description: 'The average of the mean lines of code of the methods in one class'
	type: #Numeric>
	
	^ AverageLOCperMethodAVRG ifNil: [ 7 ]