actions
invertSelection: selector

	self
		perform: (#'selected{1}:' format: {selector capitalized}) asSymbol
		with:
			((self perform: (#'available{1}' format: {selector capitalized}) asSymbol)
				copyWithoutAll:
					(self perform: (#'selected{1}' format: {selector capitalized}))).