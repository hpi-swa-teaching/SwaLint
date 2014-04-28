halos
iconicHaloSpecifications
	"Answer an array that characterizes the locations, colors, icons, and selectors of the halo handles that may be used in the iconic halo scheme"

	"Preferences resetHaloSpecifications"

	^ #(
	"  	selector				horiz		vert			color info						icon key
		---------				------		-----------		-------------------------------		---------------"
	(addCollapseHandle:		left			topCenter		(tan)							'Halo-Collapse')
	(addPoohHandle:			right		center			(white)							'Halo-Pooh')
	(addDebugHandle:		right		topCenter		(blue	veryMuchLighter)		'Halo-Debug')
	(addDismissHandle:		left			top				(red		muchLighter)			'Halo-Dismiss')
	(addRotateHandle:		left			bottom			(blue)							'Halo-Rot')
	(addMenuHandle:		leftCenter	top				(red)							'Halo-Menu')
	(addTileHandle:			left			bottomCenter	(lightBrown)					'Halo-Tile')
	(addViewHandle:			left			center			(cyan)							'Halo-View')
	(addGrabHandle:			center		top				(black)							'Halo-Grab')
	(addDragHandle:			rightCenter	top				(brown)							'Halo-Drag')
	(addDupHandle:			right		top				(green)							'Halo-Dup')	
	(addMakeSiblingHandle:	right		top				(green muchDarker)				'Halo-Dup')	
	(addHelpHandle:			center		bottom			(lightBlue)						'Halo-Help')
	(addGrowHandle:		right		bottom			(yellow)						'Halo-Scale')
	(addScaleHandle:		right		bottom			(lightOrange)					'Halo-Scale')
	(addScriptHandle:		rightCenter	bottom			(green muchLighter)			'Halo-Script')
	(addPaintBgdHandle:		right		center			(lightGray)						'Halo-Paint')
	(addViewingHandle:		leftCenter	bottom			(lightGreen lighter)				'Halo-View')
	(addRepaintHandle:		right		center			(lightGray)						'Halo-Paint')
	(addFontSizeHandle:		leftCenter	bottom			(lightGreen)						'Halo-FontSize')
	(addFontStyleHandle:		center		bottom			(lightRed)						'Halo-FontStyle')
	(addFontEmphHandle:	rightCenter	bottom			(lightBrown darker)				'Halo-FontEmph')
	(addRecolorHandle:		right		bottomCenter	(magenta darker)				'Halo-Recolor')
	(addChooseGraphicHandle:	right	bottomCenter	(green muchLighter)			'Halo-ChooseGraphic')
		) 