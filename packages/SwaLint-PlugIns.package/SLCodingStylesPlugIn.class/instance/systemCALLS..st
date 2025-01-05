private
systemCALLS: aSLSystemTestObject 

	^(((aSLSystemTestObject allClasses ifEmpty: [^ Float nan]) collect: 
		[:class | (class methods ifEmpty: [{0}] ifNotEmpty: [(class methods collect: 
			[:method | (method resultOf: #methodCallers:) itemCount])]) 
		sum ]) 
	 sum)