fonts
setWindowTitleFontTo: aFont
	"Set the window-title font to be as indicated"

	Parameters at: #windowTitleFont put: aFont.
	StandardSystemView setLabelStyle.
	Flaps replaceToolsFlap