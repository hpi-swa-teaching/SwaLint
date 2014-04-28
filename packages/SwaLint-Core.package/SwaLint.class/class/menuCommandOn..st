world menu
menuCommandOn: aBuilder 
	<worldMenu>
	(aBuilder item: #SwaLint)
		parent: #Tools;
		label: self swaLint;
		action: [self open]