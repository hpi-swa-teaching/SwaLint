accessing
selectableClassCategories
	"Answer the elements which are selectable by the user"

	^ ((self systemClasses keys) reject: [:each | each isNil]) as: SortedCollection