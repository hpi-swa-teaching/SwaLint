misc
balloonHelpDelayTime
	"Answer the number of milliseconds before a balloon help 
	should be put up on morphs."
	^ Parameters
		at: #balloonHelpDelayTime
		ifAbsent: [800]