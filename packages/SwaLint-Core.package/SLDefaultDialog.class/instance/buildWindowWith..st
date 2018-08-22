building
buildWindowWith: builder

	^ builder pluggableWindowSpec new
		model: self;
		label: #windowTitle;
		children: OrderedCollection new;
		yourself