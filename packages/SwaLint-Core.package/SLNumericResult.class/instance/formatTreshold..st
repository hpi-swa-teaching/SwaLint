displaying
formatTreshold: aThreshold

	^ aThreshold 
		ifEmpty: [''] 
		ifNotEmpty: [' (', aThreshold, ')']