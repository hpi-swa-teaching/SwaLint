private
averageHierarchyHightOf: aSLSystemTestObject

	^ ((aSLSystemTestObject rootClasses collect: 
		[:class | class resultOf: #heightOfInheritanceTree: ]) sum) / (aSLSystemTestObject rootClasses size)