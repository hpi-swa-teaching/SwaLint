accessing
uniqueTitle

	^ (self withAllParents collect: #anyTitle) joinSeparatedBy: ' > '