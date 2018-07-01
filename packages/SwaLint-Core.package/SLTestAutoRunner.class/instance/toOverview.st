as yet unclassified
toOverview
	"SwaLint open."
	
	(callingWindow owner)
		ifNotNil: [callingWindow comeToFront]
		ifNil: [SwaLint open].
	
	window closeBoxHit.