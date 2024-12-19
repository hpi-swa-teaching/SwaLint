instance creation
open
	| browser |
	browser := self new.
	(SLPreferenceBrowserMorph withModel: browser)
		openAsTool.
	^browser.	