accessing - toolbuilder
classAt: anInteger select: aBoolean

	^ self
		class: (self availableClasses at: anInteger)
		select: aBoolean