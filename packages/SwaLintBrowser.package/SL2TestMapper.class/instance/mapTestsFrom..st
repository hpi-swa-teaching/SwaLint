mapping
mapTestsFrom: aSLDefaultEnvironment

	| categories tests |
	tests := self mapBasicTestsFrom: aSLDefaultEnvironment.
	categories := self createCategories.
	tests := tests collect: [:test |
		test categoryPaths ifEmpty: [self error: 'uncategorized test'].
		test categories:
			(test categoryPaths collect: [:path |
				categories at: path ifAbsentPut: [self makeCategoryWithPath: path]]).
		self buildTest: test].
	self buildCategoryTree: categories.
	
	tests do: [:test |
		test categories do: [:cat |
			self haltIf: [cat path size = 1 and: cat sortKey isNil]]].
	
	^ tests