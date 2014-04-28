halos
customHaloSpecs
	"Intended for you to modify to suit your personal preference.  What is implemented in the default here is just a skeleton; in comment at the bottom of this method are some useful lines you may wish to paste in to the main body here, possibly modifying positions, colors, etc..
	Note that in this example, we include:
			Dismiss handle, at top-left
			Menu handle, at top-right
			Resize handle, at bottom-right
			Rotate handle, at bottom-left
			Drag handle, at top-center
			Recolor handle, at left-center.  (this one is NOT part of the standard formulary --
											it is included here to illustrate how to
 											add non-standard halos)
			Note that the optional handles for specialized morphs, such as Sketch, Text, PasteUp, are also included"

	^ #(
	(addDismissHandle:		left			top				(red		muchLighter)			'Halo-Dismiss')
	(addMenuHandle:		right		top				(red)							'Halo-Menu')
	(addDragHandle:			center	top					(brown)							'Halo-Drag')
	(addGrowHandle:		right		bottom			(yellow)						'Halo-Scale')
	(addScaleHandle:		right		bottom			(lightOrange)					'Halo-Scale')

	(addRecolorHandle:		left			center			(green muchLighter lighter)		'Halo-Recolor')

	(addPaintBgdHandle:		right		center			(lightGray)						'Halo-Paint')
	(addRepaintHandle:		right		center			(lightGray)						'Halo-Paint')
	(addFontSizeHandle:		leftCenter	bottom			(lightGreen)						'Halo-FontSize')
	(addFontStyleHandle:		center		bottom			(lightRed)						'Halo-FontStyle')
	(addFontEmphHandle:	rightCenter	bottom			(lightBrown darker)				'Halo-FontEmph')
	(addRotateHandle:		left			bottom			(blue)							'Halo-Rot')

	(addDebugHandle:		right		topCenter		(blue	veryMuchLighter)		'Halo-Debug')
	(addPoohHandle:			right		center			(white)							'Halo-Pooh')


			)

	"  Other useful handles...

  		selector				horiz		vert			color info						icon key
		---------				------		-----------		-------------------------------		---------------

	(addTileHandle:			left			bottomCenter	(lightBrown)					'Halo-Tile')
	(addViewHandle:			left			center			(cyan)							'Halo-View')
	(addGrabHandle:			center		top				(black)							'Halo-Grab')
	(addDragHandle:			rightCenter	top				(brown)							'Halo-Drag')
	(addDupHandle:			right		top				(green)							'Halo-Dup')	
	(addHelpHandle:			center		bottom			(lightBlue)						'Halo-Help')
	(addFewerHandlesHandle:	left		topCenter		(paleBuff)						'Halo-FewerHandles')
	(addPaintBgdHandle:		right		center			(lightGray)						'Halo-Paint')
	(addRepaintHandle:		right		center			(lightGray)						'Halo-Paint')
	"
