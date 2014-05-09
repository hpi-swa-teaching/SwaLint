dialogue-components
spacer: aSize
	"Answer a morph which can be put somewhere in order to provide a
	space of aSize pixels between two other morphs."
	
	^ Morph new
		extent: aSize @ 1; 
		vResizing: #spaceFill; 
		color: Color transparent;
		borderWidth: 0;
		yourself