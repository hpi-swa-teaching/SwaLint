reacting to change
infiniteUndoChanged
	"The infiniteUndo preference changed; react"
	
	self infiniteUndo ifFalse:
		[CommandHistory resetAllHistory]