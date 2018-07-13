building
buildButtonsWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (self buttons collect: [ :each |
			(each second = #toggleAutoLint) ifTrue:[
				aBuilder pluggableButtonSpec new
				model: self;
				state: #lintingEnabled;
				label: #toggleAutoLintDescription;
				changeLabelWhen: #autolintEnabledLabel;
				action: each second;
				yourself]
			ifFalse:[
			aBuilder pluggableButtonSpec new
				model: self; 
				label: each first;
				action: each second;
				yourself]]);
		yourself