map - 2. code quality - coding styles
mapShadowedInstanceVariables: aSLTestData
	<sl2Test: #smallLintTempVarOverridesInstVar>

	self flag: #discuss. "really an issue?"
	^ (self makeTestFrom: aSLTestData)
		title: 'Shadowed instance variables';
		addCategoryPath: #('code quality' 'coding styles');
		yourself