as yet unclassified
buildDescriptionWith: aBuilder

	^ aBuilder pluggableButtonSpec new
				model: self;
				label: #resultCount;
				changeLabelWhen: #resultCountLabel;
				action: #run;
				yourself 