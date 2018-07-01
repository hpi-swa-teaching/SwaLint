as yet unclassified
buildDescriptionWith: aBuilder

	^ "aBuilder pluggableTextSpec new
		model: self;
		getText: #text;
		readOnly: true;
		yourself"
		aBuilder pluggableRadioButtonSpec new
				model: self;
				label: '5';
				action: #run;
				yourself 