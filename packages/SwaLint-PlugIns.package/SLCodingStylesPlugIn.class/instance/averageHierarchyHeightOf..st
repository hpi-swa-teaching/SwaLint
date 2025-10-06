private
averageHierarchyHeightOf: aSLSystemTestObject

	^ (((aSLSystemTestObject rootClasses ifEmpty: [^ Float nan])
		collect: [:class | class resultOf: #heightOfInheritanceTree:]) sum)
			/ aSLSystemTestObject rootClasses size