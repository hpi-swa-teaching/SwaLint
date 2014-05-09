get/set
automaticFlapLayoutString
	"Answer a string for the automaticFlapLayout menu item"
	^ (self automaticFlapLayout
		ifTrue: ['<yes>']
		ifFalse: ['<no>'])
		, 'automatic flap layout' translated