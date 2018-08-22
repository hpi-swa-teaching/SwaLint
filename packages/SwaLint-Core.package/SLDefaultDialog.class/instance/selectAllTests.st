accessing-test
selectAllTests
	"Fixed to update all selections now that the
	selection invalidation has been optimised."
	
	testsSelected := tests asSet.
	self
		changed: #testSelected;
		changed: #runnable;
		update.