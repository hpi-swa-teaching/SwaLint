toolbuilder - opening
edit: aTarget

	| builder |
	self target: aTarget copy.
	builder := Project uiManager toolBuilder.
	builder open: (self buildEditDialogWith: builder).
	
	self accepted ifFalse: [^ false].
	aTarget copyFrom: self target.
	^ true