value
preferenceValue: aValue
	"set the value as indicated, and invoke the change selector if appropriate"

	| oldValue |
	oldValue := value.
	value := aValue.
	oldValue ~~ value ifTrue:
		[self notifyInformeeOfChange]