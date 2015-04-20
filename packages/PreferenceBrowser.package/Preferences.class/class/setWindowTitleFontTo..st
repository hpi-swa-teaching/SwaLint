fonts
setWindowTitleFontTo: aFont
	"Set the window-title font to be as indicated"

	Parameters at: #windowTitleFont put: aFont.
	(Smalltalk hasClassNamed: #StandardSystemView)
		ifTrue: [(Smalltalk at: #StandardSystemView) setLabelStyle].
	(Smalltalk hasClassNamed: #Flaps)
		ifTrue: [(Smalltalk at: #Flaps) replaceToolsFlap]
