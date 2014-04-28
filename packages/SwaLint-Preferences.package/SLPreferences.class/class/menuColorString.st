misc
menuColorString
	^ ((self valueOfFlag: #menuColorFromWorld)
		ifTrue: ['stop menu-color-from-world']
		ifFalse: ['start menu-color-from-world']) translated