private
averageNumberOfDerivedClassesOf: aSLSystemTestObject


	^ ((aSLSystemTestObject allClasses collect:
			[:class | class testObject subclasses size]) sum ) / (aSLSystemTestObject resultOf: #classCount:)