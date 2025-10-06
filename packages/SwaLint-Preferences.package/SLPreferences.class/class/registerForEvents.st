initialization
registerForEvents
	"SLPreferences registerForEvents"
	
	"Do not register pragma preferences with any preferences holder but this one."
	self == SLPreferences ifFalse: [^ self].
	
	SystemChangeNotifier uniqueInstance
		noMoreNotificationsFor: self;
		notify: self ofAllSystemChangesUsing: #prefEvent:.

	Smalltalk allClassesDo: [:aClass |
		aClass class methodsDo: [:method |
			method pragmas do: [:pragma |
				self addPragmaPreference: pragma] ] ].