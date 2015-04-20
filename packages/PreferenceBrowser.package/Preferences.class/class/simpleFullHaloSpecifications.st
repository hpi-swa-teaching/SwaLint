halos
simpleFullHaloSpecifications
	"This method gives the specs for the 'full' handles variant when simple halos are in effect"

	"Preferences resetHaloSpecifications"

	^ #(
	"  	selector				horiz		vert			color info						icon key
		---------				------		-----------		-------------------------------		---------------"
	(addDebugHandle:		right		topCenter		(blue	veryMuchLighter)		'Halo-Debug')
	(addPoohHandle:			right		center			(white)							'Halo-Pooh')
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
	(addFewerHandlesHandle:	left		topCenter		(paleBuff)						'Halo-FewerHandles')
	(addScriptHandle:		right		bottomCenter	(green muchLighter)			'Halo-Script')
	(addPaintBgdHandle:		right		center			(lightGray)						'Halo-Paint')
	(addRepaintHandle:		right		center			(lightGray)						'Halo-Paint')
	(addFontSizeHandle:		leftCenter	bottom			(lightGreen)						'Halo-FontSize')
	(addFontStyleHandle:		center		bottom			(lightRed)						'Halo-FontStyle')
	(addFontEmphHandle:	rightCenter	bottom			(lightBrown darker)		  'Halo-FontEmph')
	(addRecolorHandle:		right		bottomCenter	(magenta darker)				'Halo-Recolor')

		) 