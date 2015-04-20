get/set
disableGently: preferenceNameSymbol
	"Unlike #disable:, this on does not reset the CategoryInfo cache"
	self setPreference: preferenceNameSymbol toValue: false