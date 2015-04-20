fonts
subPixelRenderColorFonts
	^ self
		valueOfFlag: #subPixelRenderColorFonts
		ifAbsent: [ true ]