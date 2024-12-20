accessing - toolbuilder
classLabels
	<uses: #(classes results)>

	^ self classes collect: [:class |
		self labelForClass: class]