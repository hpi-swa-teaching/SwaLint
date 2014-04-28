text highlighting
keyboardFocusColor
	"Answer the keyboard focus color, initializing it if necessary"

	^ Parameters at: #keyboardFocusColor ifAbsentPut: [Color lightGray]

"
Parameters removeKey: #keyboardFocusColor.
Preferences keyboardFocusColor
"