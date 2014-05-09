displaying
format: aRule

	| text |
	text := super format: aRule.
	text addAttribute: (TextEmphasis italic).
	^ text