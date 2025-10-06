actions
chooseTarget

	| newTarget |
	newTarget := self targetClass fromUserOrCancel: [^ false].
	self target: newTarget.
	^ true