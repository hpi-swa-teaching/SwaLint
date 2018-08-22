accessing
classesIgnoring: aRule

	^ self classesIgnoringRules at: aRule ifAbsent: [ Set new ]