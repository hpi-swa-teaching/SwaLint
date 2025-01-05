private
averageNumberOfDerivedClassesOf: aSLSystemTestObject

	^ ((aSLSystemTestObject allClasses ifEmpty: [^ Float nan])
		collect: [:class | class testObject subclasses size]) sum
			/ (aSLSystemTestObject resultOf: #classCount:)