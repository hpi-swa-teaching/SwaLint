misc
soundEnablingString
	^ self soundsEnabled
		ifFalse:
			['turn sound on' translated]
		ifTrue:
			['turn sound off' translated]