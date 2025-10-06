app - accessing
showAbout

	| text |
	text := (Text string: Character startOfHeader asString attribute: self projectLogo asTextAnchor)
		, String cr , self projectDescription.
	^ text editWithLabel: ('About {1}' format: {self swaLint})