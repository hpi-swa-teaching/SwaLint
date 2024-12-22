actions
selectNone: selector

	self
		perform: (#'selected{1}:' format: {selector capitalized}) asSymbol
		with: #().