initialization
initialize 

	super initialize.
	self hResizing: #shrinkWrap; vResizing: #shrinkWrap.
	self color: self defaultBackgroundColor.