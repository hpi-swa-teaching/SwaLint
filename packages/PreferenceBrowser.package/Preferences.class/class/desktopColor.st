parameters
desktopColor
	"Answer the desktop color. Initialize it if necessary."
	
	DesktopColor == nil ifTrue: [DesktopColor := Color gray].
	^ DesktopColor
