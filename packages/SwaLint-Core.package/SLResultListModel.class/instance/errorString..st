results displaying
errorString: anError

	^ anError asString 
		copyReplaceAll: 'SLTestError: ' with: ''