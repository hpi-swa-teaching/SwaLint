value
rawValue: aValue
	"set the value as indicated, with no side effects"
	[provider perform: setter with: aValue]
		on: MessageNotUnderstood
		do: [:ex|
			(self attemptToSetValueFromGetter: aValue) ifFalse:
				[ex pass]]