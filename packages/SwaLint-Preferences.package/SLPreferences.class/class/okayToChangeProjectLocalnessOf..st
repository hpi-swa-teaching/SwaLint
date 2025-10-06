support
okayToChangeProjectLocalnessOf: prefSymbol
	"Answer whether it would be okay to allow the user to switch the setting of whether or not the preference symbol is local to a project.  Formerly useful and perhaps again will be, though to be sure this is a non-modular design."

	^ (#() includes: prefSymbol) not