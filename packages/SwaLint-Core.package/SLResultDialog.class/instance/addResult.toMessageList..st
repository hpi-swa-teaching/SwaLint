browsing
addResult: aResultObject toMessageList: aSet
	
	aResultObject testObject ifMethod: [
		aSet add: (MethodReference 
			class: aResultObject testObject testObjectClass
			selector: aResultObject testObject methodSelector)].
	aResultObject testObject ifClass: [
		aSet add: (MethodReference 
			class: aResultObject testObject testObject
			selector: #Definition)].