updating
prefEvent: anEvent
	"Check if this system event defines or removes a preference."

	| class selector method |
	self flag: #performance. "mt: Maybe defer preference dictionary update?"

	anEvent itemKind = SystemChangeNotifier classKind ifTrue: [
		anEvent isRemoved ifTrue: [
			self removeAllPreferencesSuchThat: [:pref | 
				pref provider == anEvent item]].
		
		anEvent isRenamed ifTrue: [
			self atomicUpdatePreferences: [ :prefs |
				self allPreferences
					select: [:pref | pref provider == anEvent item]
					thenDo: [:pref | prefs at: pref id put: pref].
				prefs keys
					select: [:id | id beginsWith: anEvent oldName]
					thenDo: [:id | prefs removeKey: id] ] ] ].
	
	anEvent itemKind = SystemChangeNotifier methodKind ifTrue: [
		"ignore instance methods"
		anEvent itemClass isMeta
			ifFalse: [^ self]. 

		class := anEvent itemClass theNonMetaClass.
		selector := anEvent itemSelector.
		method := anEvent item.

		anEvent isRemoved ifTrue: [
			self atomicUpdatePreferences: [ :prefs | 
				"See PragmaPreference >> #id."
				prefs removeKey: (class name,'>>', selector) asSymbol ifAbsent: []]].
	
		(anEvent isAdded or: [anEvent isModified]) ifTrue: [
			method pragmas do: [:pragma | self addPragmaPreference: pragma] ] ].