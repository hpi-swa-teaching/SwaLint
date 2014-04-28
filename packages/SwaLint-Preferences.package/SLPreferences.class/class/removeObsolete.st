initialization
removeObsolete
	"Remove obsolete preferences"
	SLPreference allInstancesDo:[:pref|
		pref isObsolete ifTrue:[self removePreference: pref].
	].