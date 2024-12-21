accessing
displayedResults
	<uses: #(results)>

	self shouldDisplayAllTests ifTrue: [^ self results].
	^ self results reject: [:result | result isError]