accessing-classes
classAt: anInteger put: aBoolean

	| target |
	target := self classes at: anInteger ifAbsent: [ ^ self ].
	self classesSelected:
		(self classesSelected
			perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
			with: target).