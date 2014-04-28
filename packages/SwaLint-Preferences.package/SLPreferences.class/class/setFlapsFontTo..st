fonts
setFlapsFontTo: aFont

	Parameters at: #standardFlapFont put: aFont.
	FlapTab allSubInstancesDo:
		[:aFlapTab | aFlapTab reformatTextualTab]