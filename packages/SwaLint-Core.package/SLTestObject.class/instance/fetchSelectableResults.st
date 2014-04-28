initialization
fetchSelectableResults

	selectableResults := Dictionary new.
	self results keysAndValuesDo: [ :test :result |
		(test showInResultDialog and: [result shouldBeShown]) ifTrue: [
			self selectableResults at: test symbol put: result]].
	^ selectableResults