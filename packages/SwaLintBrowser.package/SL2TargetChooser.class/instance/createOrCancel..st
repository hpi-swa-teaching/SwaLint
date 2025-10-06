toolbuilder - opening
createOrCancel: cancelBlock

	self target: self targetClass new.
	self openWith: [:builder |
		self buildCreateDialogWith: builder].
	
	self accepted ifFalse: [^ cancelBlock value].
	^ self target