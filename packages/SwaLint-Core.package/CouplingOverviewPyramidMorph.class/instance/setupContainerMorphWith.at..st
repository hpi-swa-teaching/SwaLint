initialization
setupContainerMorphWith: anInteger at: yPosition

	^ self newRectangleMorph
		extent: ((self defaultMorphEntryWidth)+
			(anInteger*(self defaultMorphEntryWidthExtension)))
			@(self defaultMorphEntryHeight);
		position: ((self getMainMorphCenterX)+(self defaultMorphEntryWidth))@yPosition