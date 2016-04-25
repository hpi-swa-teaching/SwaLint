private
startOfMethodBodyIn: aString

	| tree |
	tree :=	(RBParser new)
		initializeParserWith: aString;
		parseMethod: aString.
	^ 	aString size 
	min: 
		(tree arguments ifEmpty: [tree selectorParts])
			last stop + 1