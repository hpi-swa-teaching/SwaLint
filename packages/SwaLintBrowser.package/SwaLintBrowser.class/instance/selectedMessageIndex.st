accessing - toolbuilder
selectedMessageIndex
	<uses: #(selectedMessageName)>

	^ self messages indexOf: self selectedMessageName ifAbsent: [0]