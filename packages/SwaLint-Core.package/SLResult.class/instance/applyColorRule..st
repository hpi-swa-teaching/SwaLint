displaying
applyColorRule: aStringOrText

	^ (aStringOrText asText)
		addAttribute: (color ifNil: [self cacheColor]);
		yourself