accessing
atomicUpdatePreferences: aBlock 
	"Evaluate aBlock with a copy of the preferences dictionary and
	then assign (assignment is atomic) the copy to the dictionary."

	[
		| originalPreferences copyOfPreferences |
		originalPreferences := preferencesDictionary.
		copyOfPreferences := preferencesDictionary
			ifNil: [ IdentityDictionary new ]
			ifNotNil: [ :dictionary | dictionary copy ].
		aBlock value: copyOfPreferences.
		originalPreferences == preferencesDictionary ifTrue: [
	 		preferencesDictionary := copyOfPreferences.
			^self ] ] repeat