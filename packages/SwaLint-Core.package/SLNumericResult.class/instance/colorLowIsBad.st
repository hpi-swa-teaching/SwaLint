displaying
colorLowIsBad

	self colorRule: [ :v :t | self getColorLowIsBad: t].
	self icon: self getIconColorLowIsBad.