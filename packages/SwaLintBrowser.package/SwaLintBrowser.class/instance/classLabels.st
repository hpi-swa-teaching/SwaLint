accessing - toolbuilder
classLabels
	<uses: #(classes displayedResults)>

	^ self cached:
		[self classes collect: [:class |
			self labelForClass: class]]