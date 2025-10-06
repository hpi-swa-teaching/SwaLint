initialization
asContainerWithPadding: padding

	| container |
	container := Morph new
		beTransparent;
		extent: (self fullBounds; extent) + (padding * 2);
		addMorph: self;
		yourself.
	self position: padding.
	^ container