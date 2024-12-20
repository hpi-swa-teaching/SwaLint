accessing - toolbuilder
messageLabels
	<uses: #(messages)>

	^ self messages collect: [:message |
		self labelForMessage: message]