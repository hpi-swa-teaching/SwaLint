misc
roundedCornersString
	^ (((self valueOfFlag: #roundedWindowCorners)
		ifTrue: ['stop']
		ifFalse: ['start']) , ' rounding window corners') translated