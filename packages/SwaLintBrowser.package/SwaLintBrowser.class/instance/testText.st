accessing - toolbuilder
testText
	<uses: #(selectedMessageName selectedTestNode displayedResults)>

	| description resultsText |
	description := self hasMessageSelected
		ifFalse:
			[self hasTestNodeSelected ifTrue:
				[self selectedTestNode description]]
		ifTrue:
			[((self resultsForTestAndMessageSelection collect: #test) withoutDuplicates
				collect: [:test | test description])
					joinSeparatedBy: String cr , String cr].
	
	resultsText := self hasMessageSelected ifTrue:
		['<!--<b>Results:</b><br>-->{1}' asTextFromHtml format:
			{(self resultsForTestAndMessageSelection
				collect: [:result | '{1}: {2}' asText format: {result test title. result valueString}])
					inject: Text new into: #,}].
	
	^ Text streamContents: [:stream |
		({resultsText. description} copyWithout: nil)
			do: [:part | stream nextPutAll: part]
			separatedBy: [stream cr; cr]]