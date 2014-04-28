accessing
selectableResults

	^ selectableResults ifNil: [
			self fetchSelectableResults]