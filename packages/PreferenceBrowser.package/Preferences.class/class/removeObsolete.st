initialization
removeObsolete
	"Remove obsolete preferences"
	Preference allInstancesDo:[:pref|
		pref isObsolete ifTrue:[self removePreference: pref].
	].