private
commonStartOf: aCollection

	| result |
	result := aCollection at: 1.
	aCollection allButFirstDo: [ :each |
		result := self commonStartOf: result and: each].
	^ result