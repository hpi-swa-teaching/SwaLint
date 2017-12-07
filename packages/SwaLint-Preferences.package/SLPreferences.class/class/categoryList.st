preferences panel
categoryList
	"Answer a list of category names for the preferences panel"
	^ {#?}, self categoryNames sorted asArray, {#'search results'}

	"Preferences listOfCategories"
