toolbuilder
buildTestPane: builder

	^ builder pluggableTextSpec new
		name: #testPane;
		model: self;
		
		getText: #testText;
		
		yourself