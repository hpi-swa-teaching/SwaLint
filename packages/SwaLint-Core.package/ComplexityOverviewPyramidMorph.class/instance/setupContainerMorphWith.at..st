initialization
setupContainerMorphWith: anInteger at: yPosition

	^ self newRectangleMorph
		extent: 
			((self defaultMorphEntryWidth)
				+((anInteger-1)*(self defaultMorphEntryWidthExtension)))
			@(self defaultMorphEntryHeight);
		position: 
			((self getMainMorphCenterX)
				-((anInteger-1)*(self defaultMorphEntryWidthExtension)))
			@yPosition