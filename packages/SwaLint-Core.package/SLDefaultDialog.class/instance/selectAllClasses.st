accessing-classes
selectAllClasses
	"Fixed to update all selections now that the
	selection invalidation has been optimised."
	
	self classesSelected: self classes asSet.
	self update.