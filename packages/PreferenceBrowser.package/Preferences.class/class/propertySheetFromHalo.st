standard queries
propertySheetFromHalo
	^ self
		valueOfFlag: #propertySheetFromHalo
		ifAbsent: [true]