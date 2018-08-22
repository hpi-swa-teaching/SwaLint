accessing-test
selectNoTests
	"Fixed to update all selections now that the
	selection invalidation has been optimised."
	
	testsSelected := Set new.
	descriptionCollection := OrderedCollection new.
	self
		changed: #testSelected;
		changed: #runnable;
		update.