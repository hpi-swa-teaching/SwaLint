private
commonStartOf: aCollection

	| result |
	result := aCollection first.
	aCollection allButFirstDo: [ :each |
		result := self commonStartOf: result and: each].
	^ result