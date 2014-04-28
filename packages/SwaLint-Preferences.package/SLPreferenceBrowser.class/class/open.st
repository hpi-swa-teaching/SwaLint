instance-creation
open

	UiInstance 
		ifNil: [ 
			| browser |
			browser := self new.
			UiInstance := (SLPreferenceBrowserMorph withModel: browser) openInWorld ]
		ifNotNil: [ UiInstance activate ].
	
	^ UiInstance model