as yet unclassified
toOverview
	"SwaLint open."
	

	(callingWindow owner)
		ifNotNil: [callingWindow comeToFront]
		ifNil: [callingDialog open].
	
	window closeBoxHit.