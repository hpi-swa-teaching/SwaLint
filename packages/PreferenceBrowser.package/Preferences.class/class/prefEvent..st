dynamic preferences
prefEvent: anEvent
	"Check if this system event defines or removes a preference.
	TODO: Queue the event and handle in background process. 
	There is zero reason to be so eager here."
	| aClass aSelector prefSymbol method |
	(anEvent itemKind = SystemChangeNotifier classKind and: [anEvent isRemoved])
		ifTrue:[self removePreferencesFor: anEvent item].
	anEvent itemKind = SystemChangeNotifier methodKind ifTrue:[
		aClass := anEvent itemClass.
		aClass isMeta ifFalse:[^self]. "ignore instance methods"
		aClass := aClass theNonMetaClass.
		aSelector := anEvent itemSelector.
		(anEvent isRemoved or:[anEvent isModified]) ifTrue:[
			prefSymbol := (aClass name,'>>', aSelector) asSymbol.
			self dictionaryOfPreferences removeKey: prefSymbol ifAbsent:[]].
		(anEvent isAdded or:[anEvent isModified]) ifTrue:[
			method := anEvent item.
			method pragmas do:[:pragma| | aPreference aPrefSymbol |
				pragma keyword == #preference:category:description:type: ifTrue:[
					aPrefSymbol := (aClass name,'>>', method selector) asSymbol.
					aPreference := self 
						preference: pragma arguments first
						category: pragma arguments second 
						description: pragma arguments third
						type: pragma arguments fourth.
					aPreference 
						provider: aClass 
						getter: method selector 
						setter: method selector asMutator.
					self dictionaryOfPreferences at: aPrefSymbol put: aPreference]]]].
