toolbuilder - opening
edit: aTarget

	self target: aTarget copy.
	self openWith: [:builder | self buildEditDialogWith: builder].
	
	self accepted ifFalse: [^ false].
	aTarget copyFrom: self target.
	^ true