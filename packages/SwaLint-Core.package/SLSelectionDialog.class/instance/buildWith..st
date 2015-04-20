as yet unclassified
buildWith: aBuilder 
	"Create the package loader window."
	| buttonBarOffset catWidth classWidth |
	buttonBarOffset := 1 - 0.07.
	catWidth := 0.3.
	classWidth := 0.3.
	builder := aBuilder.
	window := builder build: (builder pluggableWindowSpec new model: self;
					 label: #label;
					 children: {
						(self buildCategoriesListWith: builder) frame: (0 @ 0 corner: catWidth @ buttonBarOffset) .
						(self buildClassListWith: builder) frame: (catWidth @ 0 corner: (catWidth + classWidth) @ buttonBarOffset) .
						(self buildTestsListWith: builder) frame: ((catWidth + classWidth) @ 0 corner: 1 @ buttonBarOffset).
						(self buildButtonBarWith: builder) frame: (0 @ buttonBarOffset corner: 1 @ 1)};
					 yourself).
	window on: #mouseEnter send: #paneTransition: to: window.
	window on: #mouseLeave send: #paneTransition: to: window.
	window extent: self initialExtent.
	^ window