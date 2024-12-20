accessing
label

	self flag: #todo. "compute compact representation"
	^ '{1} / {2}' format: {self systemCategories asCommaStringAnd. self classes asCommaStringAnd}