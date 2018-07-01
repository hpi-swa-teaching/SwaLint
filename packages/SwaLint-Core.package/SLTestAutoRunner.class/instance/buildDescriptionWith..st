as yet unclassified
buildDescriptionWith: aBuilder

	^ "aBuilder pluggableTextSpec new
		model: self;
		getText: #text;
		readOnly: true;
		yourself"
		aBuilder pluggableButtonSpec new
				model: self;
				label: #resultCount;
				changeLabelWhen: #resultCountLabel;
				action: #run;
				yourself 