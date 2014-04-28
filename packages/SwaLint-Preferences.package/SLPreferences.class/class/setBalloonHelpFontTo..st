fonts
setBalloonHelpFontTo: aFont

	Smalltalk at: #BalloonMorph ifPresent:
		[:thatClass | thatClass setBalloonFontTo: aFont]