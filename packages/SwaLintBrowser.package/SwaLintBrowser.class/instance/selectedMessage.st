accessing
selectedMessage
	<uses: #(displayedResults selectedMessageName)>

	self hasMessageSelected ifFalse: [^ ''].
	self selectedMessageName isSymbol ifFalse:
		[^ self resultsForTestAndMessageSelection first valueStringOrText].
	self selectedMessageName = #Definition ifTrue:
		[^ self selectedClass "ifNotNil:" "#"definition].
	
	^ super selectedMessage
		ifEmpty:
			[(self showingDecompile not and: [self selectedClassOrMetaClass notNil] and: [self selectedMessageName notNil]) ifTrue:
				[self selectedClassOrMetaClass compiledMethodAt: self selectedMessageName ifAbsent:
					[^ 'Missing']]];
		yourself