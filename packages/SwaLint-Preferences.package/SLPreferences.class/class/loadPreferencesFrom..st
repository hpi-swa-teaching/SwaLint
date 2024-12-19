initialization - save/load
loadPreferencesFrom: aFile

	| stream params dict desktopColor patternsToIgnore |
	patternsToIgnore := #('*updateMapName' '*defaultUpdateURL').
	stream := ReferenceStream fileNamed: aFile.
	params := stream next.
	self assert: (params isKindOf: IdentityDictionary).
	params removeKey: #PersonalDictionaryOfPreferences.
	dict := stream next.
	self assert: (dict isKindOf: IdentityDictionary).
	desktopColor := stream next.
	stream close.
	dict rehash. "See http://lists.squeakfoundation.org/pipermail/squeak-dev/2021-December/217817.html"
	dict keys
		reject: [:key | patternsToIgnore anySatisfy: [:pattern | pattern match: key]]
		thenDo: [:key | | value |
			value := dict at: key.
			(self preferenceAt: key ifAbsent: [nil]) ifNotNil:
				[:pref | [pref preferenceValue: value preferenceValue]
					on: Deprecation do: [ : err | "Ignore preferences which may not be supported anymore."]]].
	params keysAndValuesDo: [ :key :value | self setParameter: key to: value ].
	Smalltalk isMorphic
		ifTrue: [ Project current world fillStyle: desktopColor ]
		ifFalse: [ self desktopColor: desktopColor. ScheduledControllers updateGray ]