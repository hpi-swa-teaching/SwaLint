*SwaLint-Core-UserInterface
reset
	"Reset the window by removing all panes"

	self removePaneSplitters.
	
	paneMorphs do: [:each |
		each owner removeMorph: each.
		model removeDependent: each.
	].
	paneMorphs := Array new.

	self changed.
