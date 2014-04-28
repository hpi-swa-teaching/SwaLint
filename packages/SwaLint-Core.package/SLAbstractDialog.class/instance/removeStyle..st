dialogue-components
removeStyle: aMorph
	"Remove color and borderStyle of aMorph. Used in order to make the
	buttonBar transparent. This can not be done before it is added to the 
	window, because some stupid implementation sets the default border
	of each morph added to 1 and the default color to White. :-( "
	
	aMorph
		color: Color transparent;
		borderWidth: 0.