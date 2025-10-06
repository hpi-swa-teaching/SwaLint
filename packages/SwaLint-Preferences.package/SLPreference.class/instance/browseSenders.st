browsing
browseSenders

	self systemNavigation
		browseAllSelect: [:m | self selectors anySatisfy: [:sel | m hasLiteral: sel]]
		name: ('Preference senders: {1}' translated format: {self name})
		autoSelect: self selectors first.