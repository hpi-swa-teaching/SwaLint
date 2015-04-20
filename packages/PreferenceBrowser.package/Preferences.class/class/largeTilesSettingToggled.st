reacting to change
largeTilesSettingToggled
	"The current value of the largeTiles flag has changed; now react"

	Smalltalk isMorphic ifTrue:
		[Preferences universalTiles
			ifFalse:
				[self inform: 
'note that this will only have a noticeable
effect if the universalTiles preference is
set to true, which it currently is not' translated]
			ifTrue:
				[World recreateScripts]]