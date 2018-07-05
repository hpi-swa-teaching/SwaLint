actions
toOverview	

	(callingWindow owner)
		ifNotNil: [callingWindow comeToFront]
		ifNil: [callingDialog open].
	
	window closeBoxHit.