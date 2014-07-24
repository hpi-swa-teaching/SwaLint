pragma-preferences
convertPragmaToPreference: aPragma

	| aPreference |

	aPragma keyword == #slpreference:type:categories:defaultValue:helpText:
		ifTrue: [ aPreference := self 
			preference: aPragma arguments first
			type: aPragma arguments second
			categories: aPragma arguments third
			defaultValue: aPragma arguments fourth
			helpText: aPragma arguments fifth ].
	aPragma keyword == #slpreference:type:categories:defaultValue:helpText:projectLocal:changeInformee:changeSelector:
		ifTrue: [	aPreference := self 
			preference: aPragma arguments first
			type: aPragma arguments second
			categories: aPragma arguments third
			defaultValue: aPragma arguments fourth
			helpText: aPragma arguments fifth
			projectLocal: aPragma arguments sixth
			changeInformee: aPragma arguments seventh
			changeSelector: aPragma arguments eighth ].
		aPreference 
			provider: aPragma method methodClass theNonMetaClass
			getter: aPragma method selector
			setter: aPragma method selector asMutator.
		
	^ aPreference