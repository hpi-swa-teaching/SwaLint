actions
toOverview	

	(self callingWindow owner)
		ifNotNil: [self callingWindow comeToFront]
		ifNil: [self callingDialog open].
	
	self window closeBoxHit.