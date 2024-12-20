mapping
createCategories

	| categories category |
	categories := Dictionary new.
	self testCategoryPragmas do: [:pragma |
		category := self perform: pragma selector.
		categories
			at: category path
			ifPresent: [self error: 'multiple category definitions']
			ifAbsentPut: [category]].
	^ categories