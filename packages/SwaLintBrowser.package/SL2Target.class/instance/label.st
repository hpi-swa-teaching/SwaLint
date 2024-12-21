accessing
label

	| allCategories allClasses |
	self flag: #todo. "compute more compact representation"
	
	allCategories := OrderedCollection new.
	allClasses := OrderedCollection withAll: self classes.
	self systemCategories do: [:category |
		| categoryClasses |
		categoryClasses := SystemOrganizer default listAtCategoryNamed: category.
		(allClasses includesAllOf: categoryClasses) ifTrue:
			[allClasses removeAll: categoryClasses.
			allCategories add: category]].
	
	allCategories ifEmpty:
		[allClasses ifEmpty: [^ '(none)'].
		^ allClasses asCommaStringAnd].
	allClasses ifEmpty: [^ allCategories asCommaStringAnd].
	^ '{1} + {2}' format: {allCategories asCommaStringAnd. allClasses asCommaStringAnd}