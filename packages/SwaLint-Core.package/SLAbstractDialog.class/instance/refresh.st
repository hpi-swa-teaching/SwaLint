actions
refresh
	
	self window world ifNil: [^ self].
	self environment reload.