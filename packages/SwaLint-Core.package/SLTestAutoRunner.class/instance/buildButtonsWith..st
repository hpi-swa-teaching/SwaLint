building
buildButtonsWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (self buttons collect: [ :each |
			(each second = #toggleAutoLint) ifTrue:[
				aBuilder pluggableCheckBoxSpec new
				model: self;
				state: #toggleAutoLintState;
				label: #toggleAutoLintDescription;
				action: each second;
				yourself]
			ifFalse:[
			aBuilder pluggableButtonSpec new
				model: self; 
				label: each first;
				action: each second;
				color: Color red;
				yourself]]);
		yourself