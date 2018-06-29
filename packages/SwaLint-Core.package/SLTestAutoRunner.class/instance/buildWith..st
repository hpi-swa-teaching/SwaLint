as yet unclassified
buildWith: aBuilder


	window := self buildWindowWith: aBuilder specs: {
		self buttonsFrame -> [self buildButtonsWith: aBuilder].	
		self descriptionFrame -> [self buildDescriptionWith: aBuilder].
	}.
	window := aBuilder build: window.
	^ window

	"| windowSpec|
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self windowTitle;
		extent: 200@300.
		
	^ aBuilder build: windowSpec"