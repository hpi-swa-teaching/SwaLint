building
buildDescriptionWith: aBuilder
		
	^ aBuilder pluggableButtonSpec new
				model: self;
				label: #resultCount;
				changeLabelWhen: #resultCountLabel;
				action: #openResultsDialog;
				yourself 