reacting to change
noviceModeSettingChanged
	"The current value of the noviceMode flag has changed;  
	now react"
	TheWorldMainDockingBar updateInstances.
	PasteUpMorph allSubInstances
		select: [:each | each isWorldMorph]
		thenDo: [:each | each initializeDesktopCommandKeySelectors].
	Smalltalk at: #ParagraphEditor ifPresent: [:aClass| aClass initialize]