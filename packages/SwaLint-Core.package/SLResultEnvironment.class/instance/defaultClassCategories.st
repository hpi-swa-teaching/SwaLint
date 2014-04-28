initialize-release
defaultClassCategories
	"Initialize class and classCategory models"
	
	super defaultClassCategories.
	classCategories asStringSelector: #name.
	classes asStringSelector: #name.