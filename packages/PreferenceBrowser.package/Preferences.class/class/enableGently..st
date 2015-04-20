get/set
enableGently: preferenceNameSymbol
	"Unlike #enable:, this one does not reset the CategoryInfo cache"
	self setPreference: preferenceNameSymbol toValue: true