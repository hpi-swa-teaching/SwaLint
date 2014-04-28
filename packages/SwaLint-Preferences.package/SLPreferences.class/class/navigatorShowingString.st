get/set
navigatorShowingString
	"Answer a string for the show-project-navigator menu item"
	^ (self showProjectNavigator
		ifTrue: ['<yes>']
		ifFalse: ['<no>'])
		, 'show navigator (N)' translated