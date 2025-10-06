mapping
mapTestFrom: aSLTestData

	| test |
	test := self mapBasicTestFrom: aSLTestData.
	test ifNil: [^ nil].
	
	(test categoryPaths reject: [:path | path beginsWith: #('(legacy structure)')]) ifEmpty:
		[test addCategoryPath: #('uncategorized')].
	
	^ test