accessing - toolbuilder
selectedClassIndex
	<uses: #(selectedClass)>

	^ self classes indexOf: self selectedClass ifAbsent: [0]