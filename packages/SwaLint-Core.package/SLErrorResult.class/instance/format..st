displaying
format: aRule

	^ (super format: aRule) asText
		addAttribute: (TextEmphasis italic);
		yourself