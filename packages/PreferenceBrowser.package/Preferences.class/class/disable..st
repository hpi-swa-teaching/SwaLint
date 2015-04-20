get/set
disable: aSymbol
	"Shorthand access to enabling a preference of the given name.  If there is none in the image, conjure one up"

	| aPreference |
	aPreference := self preferenceAt: aSymbol ifAbsent:
		[self addPreference: aSymbol category: 'unclassified' default: false balloonHelp: 'this preference was added idiosyncratically and has no help message.'.
		self preferenceAt: aSymbol].
	aPreference preferenceValue: false