actions
selectAll: selector

	self
		perform: (#'selected{1}:' format: {selector capitalized})
		with: (self perform: (#'available{1}' format: {selector capitalized})).