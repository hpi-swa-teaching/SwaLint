dynamic preferences
registerForEvents
	"Preferences registerForEvents"
	
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	SystemChangeNotifier uniqueInstance notify: self ofAllSystemChangesUsing: #prefEvent:.
	Smalltalk allClassesDo:[:aClass|
		aClass class methodsDo:[:method|
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
