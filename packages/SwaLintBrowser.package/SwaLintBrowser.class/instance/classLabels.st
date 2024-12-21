accessing - toolbuilder
classLabels
	<uses: #(classes displayedResults)>

	^ self classes collect: [:class |
		self labelForClass: class]