private
systemCYCLO: aSLSystemTestObject 

	^((aSLSystemTestObject allClasses collect: 
		[:class | (class methods ifEmpty: [{0}] ifNotEmpty: [(class methods collect: 
			[:method | (method resultOf: #methodCYCLO:) result])]) 
		sum ]) 
	 sum)