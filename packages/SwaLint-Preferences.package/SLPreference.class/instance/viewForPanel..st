user interface
viewForPanel: aPreferencePanel
	| viewClass |
	viewClass := self viewClassForPanel: aPreferencePanel.
	^viewClass ifNotNil: [viewClass preference: self]