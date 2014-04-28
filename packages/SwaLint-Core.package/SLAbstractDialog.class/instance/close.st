actions
close
	"Close this Dialog which means deleteing my window.
	Closing is only permitted if 	the programm is not currently running."
	
	self notRunning ifFalse: [^ self].
	self window delete.