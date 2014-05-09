results
selectResults: aSLTestDataCollection
	"Answer all available visible results for tests in the collection"

	| list |
	list := OrderedCollection new.
	aSLTestDataCollection do: [ :test |
		self selectableResults at: test symbol ifPresent: [ :r | 
			list add: r]].
	^ list