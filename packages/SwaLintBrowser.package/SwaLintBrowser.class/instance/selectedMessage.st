accessing
selectedMessage
	<uses: #(results selectedMessageName)>

	self hasMessageSelected ifFalse: [^ ''].
	self selectedMessageName isSymbol ifFalse:
		[^ self resultsForTestAndMessageSelection first valueString].
	self selectedMessageName = #Definition ifTrue:
		[^ self selectedClass "ifNotNil:" "#"definition].
	^ super selectedMessage