value
preferenceValue: aValue
	"set the value as indicated, and invoke the change selector if appropriate"
	self preferenceValue = aValue ifFalse:[
		self rawValue: aValue.
		self notifyInformeeOfChange].