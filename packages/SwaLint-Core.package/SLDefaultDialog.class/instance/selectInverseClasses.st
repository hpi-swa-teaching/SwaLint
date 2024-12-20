accessing-classes
selectInverseClasses

	self classesSelected:
		(self classes asSet 
			removeAll: classesSelected;
			yourself).
	self update.