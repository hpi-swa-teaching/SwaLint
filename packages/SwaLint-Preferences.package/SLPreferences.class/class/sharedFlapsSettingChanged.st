reacting to change
sharedFlapsSettingChanged
	"The current value of the showSharedFlaps flag has changed; now react"

	self showSharedFlaps  "viz. the new setting"
		ifFalse:		
			[Flaps globalFlapTabsIfAny do:
				[:aFlapTab | Flaps removeFlapTab: aFlapTab keepInList: true]]

		ifTrue:
			[Smalltalk isMorphic ifTrue:
				[self currentWorld addGlobalFlaps]]