displaying
colorLowIsGood

	self colorRule: [ :v :t | self getColorLowIsGood: t].
	self icon: self getIconColorLowIsGood.