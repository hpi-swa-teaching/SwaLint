get/set - flags
disable: aSymbol
	"Shorthand access to enabling a preference of the given name.  If there is none in the image, conjure one up"

	^ self setFlag: aSymbol toValue: false