accessing-classes
classAt: anInteger

	^ self classesSelected includes:
		(self classes at: anInteger ifAbsent: [ ^ false ])