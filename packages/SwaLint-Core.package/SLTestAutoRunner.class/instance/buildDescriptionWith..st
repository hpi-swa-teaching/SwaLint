as yet unclassified
buildDescriptionWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #text;
		readOnly: true;
		yourself