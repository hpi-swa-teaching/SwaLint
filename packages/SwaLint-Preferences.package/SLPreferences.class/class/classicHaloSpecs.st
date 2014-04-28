halos
classicHaloSpecs
	"Non-iconic halos with traditional placements"

	"Preferences installClassicHaloSpecs"
	"Preferences resetHaloSpecifications"  "  <-  will result in the standard default halos being reinstalled"
	"NB: listed below in clockwise order"

		^ #(
	"  	selector				horiz		vert			color info						icon key
		---------				------		-----------		-------------------------------		---------------"
	(addMenuHandle:		left			top				(red)							none)
	(addDismissHandle:		leftCenter	top				(red		muchLighter)			'Halo-Dismiss')
	(addGrabHandle:			center		top				(black)							none)
	(addDragHandle:			rightCenter	top				(brown)							none)
	(addDupHandle:			right		top				(green)							none)	
	(addMakeSiblingHandle:		right		top				(green muchDarker)				'Halo-Dup')	
	(addDebugHandle:		right		topCenter		(blue	veryMuchLighter)		none)
	(addPoohHandle:			right		center			(white)							none)
	(addPaintBgdHandle:		right		center			(lightGray)						none)
	(addRepaintHandle:		right		center			(lightGray)						none)
	(addGrowHandle:		right		bottom			(yellow)						none)
	(addScaleHandle:		right		bottom			(lightOrange)					none)
	(addFontEmphHandle:	rightCenter	bottom			(lightBrown darker)				none)
	(addFontStyleHandle:		center		bottom			(lightRed)						none)
	(addFontSizeHandle:		leftCenter	bottom			(lightGreen)						none)

	(addRecolorHandle:		right		bottomCenter	(magenta darker)				none)

	(addRotateHandle:		left			bottom			(blue)							none))

