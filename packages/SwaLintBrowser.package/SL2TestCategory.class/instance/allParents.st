accessing
allParents

	^ self parent ifNil: [#()] ifNotNil: [self parent withAllParents]