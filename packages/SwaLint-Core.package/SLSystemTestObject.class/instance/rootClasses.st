accessing
rootClasses

	^ allClasses select: [:class | self classIsRoot: class testObject]