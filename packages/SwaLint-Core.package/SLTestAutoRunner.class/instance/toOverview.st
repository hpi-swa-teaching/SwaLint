as yet unclassified
toOverview
	"SwaLint open."
	
	(callingWindow owner)
		ifNotNil: [callingWindow comeToFront]
		ifNil: [callingWindow openInWorld].
	
	window closeBoxHit.