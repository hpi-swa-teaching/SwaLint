parameters
initializeParameters
	"Preferences initializeParameters"
	Parameters := IdentityDictionary new.
	self restoreDefaultMenuParameters.
	Parameters at: #maxBalloonHelpLineLength put: 28.
	self initializeTextHighlightingParameters