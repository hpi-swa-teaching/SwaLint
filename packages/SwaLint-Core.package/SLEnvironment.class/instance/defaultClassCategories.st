initialize-release
defaultClassCategories
	"Initialize class and classCategory models"
	
	classCategories := (SLMultipleSelectionModel 
		withModel: self withMessage: #selectableClassCategories)
			menuGetter: #classCategoryMenuFor:in:.
	
	classes := (SLMultipleSelectionModel 
		withModel: self withMessage: #selectableClasses)
			menuGetter: #classMenuFor:in:.
	
	classCategories addDependent: classes.
	classCategories addDependent: self.
	classes addDependent: self.