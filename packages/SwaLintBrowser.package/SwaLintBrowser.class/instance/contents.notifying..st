accessing - toolbuilder
contents: input notifying: aController

	^ (super contents: input notifying: aController)
		ifTrue: [self changed: #messageLabels];
		yourself