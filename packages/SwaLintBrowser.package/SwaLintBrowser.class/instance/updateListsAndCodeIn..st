updating
updateListsAndCodeIn: aWindow

	super updateListsAndCodeIn: aWindow.
	
	(self messages anySatisfy: [:message | self isMessageOutOfSync: message]) ifTrue:
		[self changed: #messageLabels].
	self changed: #targetLabel.