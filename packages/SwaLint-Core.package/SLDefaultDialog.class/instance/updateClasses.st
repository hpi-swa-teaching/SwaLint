updating
updateClasses

	| classesForCategories |
	classesForCategories := self findClassesForSelectedCategories.
	classes := classesForCategories asArray sorted: [ :first :second | first name <= second name ].
	self classSelected: 0.
	self classesSelected: (self classesSelected select: [ :each | classesForCategories includes: each ]).
	self changed: #classList.