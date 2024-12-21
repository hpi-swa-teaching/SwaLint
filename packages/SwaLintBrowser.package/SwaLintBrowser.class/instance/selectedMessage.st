accessing
selectedMessage
	<uses: #(displayedResults selectedMessageName)>

	self hasMessageSelected ifFalse: [^ ''].
	self selectedMessageName isSymbol ifFalse:
		[^ self resultsForTestAndMessageSelection first valueStringOrText].
	self selectedMessageName = #Definition ifTrue:
		[^ self selectedClass "ifNotNil:" "#"definition].
	^ super selectedMessage