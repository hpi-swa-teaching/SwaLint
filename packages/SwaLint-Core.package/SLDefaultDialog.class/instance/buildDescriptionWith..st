building
buildDescriptionWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #testDescription;
		readOnly: true;
		yourself