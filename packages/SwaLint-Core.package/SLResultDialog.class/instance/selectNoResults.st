accessing-results
selectNoResults
	"Fixed to update all selections now that the
	selection invalidation has been optimised."
	
	self resultsSelected: IdentitySet new.
	self changed: #resultSelected; update.