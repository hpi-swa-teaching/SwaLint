initialization
setupContainerMorphWith: anInteger at: yPosition

	^ self newRectangleMorph
		extent: (self defaultMorphEntryWidth)@(self defaultMorphEntryHeight);
		position: (self getMainMorphCenterX)@yPosition