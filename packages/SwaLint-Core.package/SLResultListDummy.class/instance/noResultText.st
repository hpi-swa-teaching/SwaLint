accessing
noResultText

	| t |
	t := 'no results to show' asText.
	t addAttribute: TextEmphasis italic.
	^ t