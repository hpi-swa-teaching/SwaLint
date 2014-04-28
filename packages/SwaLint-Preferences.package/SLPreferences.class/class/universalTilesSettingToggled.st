reacting to change
universalTilesSettingToggled
	"The current value of the universalTiles flag has changed; now react"

	(self preferenceAt: #universalTiles ifAbsent: [^ self]) localToProject ifFalse:
			[^ self inform: 
'This is troubling -- you may regret having done that, because
the change will apply to *all projects*, including pre-existing ones.  Unfortunately this check is done after the damage is done, so you
may be hosed.  Fortunately, however, you can simply reverse your choice right now and perhaps no deep damage will have been done.'].

	self universalTiles  "User just switched project to classic tiles"
		ifFalse:
			[self inform: 
'CAUTION -- if you had any scripted objects in
this project that already used universal tiles, 
there is no reasonable way to go back to classic
tiles.  Recommended course of action in that case:
just toggle this preference right back to true.']
		ifTrue:
			[Preferences capitalizedReferences ifFalse:
				[Preferences enable: #capitalizedReferences.
				self inform: 
'Note that the "capitalizedReferences" flag
has now been automatically set to true for
you, since this is required for the use of
universal tiles.'].
			World isMorph ifTrue:
				[World recreateScripts]]