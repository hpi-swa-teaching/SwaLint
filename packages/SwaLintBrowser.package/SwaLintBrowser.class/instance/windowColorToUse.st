toolbuilder - accessing
windowColorToUse

	^ Color colorFrom: (self class useColorfulWindows
		ifTrue: [self defaultWindowColor]
		ifFalse: [self uniformWindowColor])