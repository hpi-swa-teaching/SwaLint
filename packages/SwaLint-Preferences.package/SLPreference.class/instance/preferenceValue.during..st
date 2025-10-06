value
preferenceValue: val during: aBlock

	| oldValue |
	(oldValue := self preferenceValue) = val ifTrue: [^ aBlock value].
	self preferenceValue: val.
	^ aBlock ensure:
		[self preferenceValue: oldValue]