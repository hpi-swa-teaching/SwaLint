PreferenceBrowser
openInCategory: category

	| browser |
	browser := PreferenceBrowser open.
	^ browser
		selectedCategory: ((self categoryList includes: category)
			ifTrue: [category capitalized]
			ifFalse: [browser allCategoryLabel]);
		selectedPreference: self;
		yourself