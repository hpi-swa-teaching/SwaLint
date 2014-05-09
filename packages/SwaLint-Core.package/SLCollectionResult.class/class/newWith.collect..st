instance creation
newWith: aCollection collect: aBlock

	^ (self new) initValue: (aCollection collect: aBlock)