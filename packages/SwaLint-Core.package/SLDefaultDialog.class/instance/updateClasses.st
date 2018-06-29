updating
updateClasses

	| classesForCategories |
	classesForCategories := self findClassesForSelectedCategories.
	classes := classesForCategories asArray sorted: [ :first :second | first name <= second name ].
	classIndex := 0.
	classesSelected := classesSelected select: [ :each | classesForCategories includes: each ].
	self changed: #classList; changed: #classSelected.