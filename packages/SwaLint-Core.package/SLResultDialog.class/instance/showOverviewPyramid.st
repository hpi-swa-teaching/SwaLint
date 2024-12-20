building
showOverviewPyramid

	| resultListPanel |
	resultListPanel := self resultPanel submorphs first.
	resultListPanel layoutFrame rightFraction: 0.5 offset: 0.
	resultListPanel layoutChanged.