map - 2. code quality - redundant code
mapMethodsWithoutSenders: aSLTestData
	<sl2Test: #methodsWithoutSenders>

	self flag: #todo. "disabled for performance"
	self flag: #todo. "overlaps with #mapImplementedNotSent:. See comment there."
	^ nil