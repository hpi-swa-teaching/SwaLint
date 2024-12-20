toolbuilder - opening
createOrCancel: cancelBlock

	| builder |
	self target: self targetClass new.
	builder := Project uiManager toolBuilder.
	builder open: (self buildCreateDialogWith: builder).
	self accepted ifFalse: [^ cancelBlock value].
	^ self target