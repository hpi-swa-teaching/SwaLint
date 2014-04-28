instance creation
newWith: aCollection select: aBlock

	^ (self new) initValue: (aCollection select: aBlock)