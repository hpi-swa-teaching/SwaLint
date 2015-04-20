private
methodIsSetter: aSLMethodTestObject

	| method | "improvement needed..."
	method := aSLMethodTestObject testObject.
    ^ (method numArgs = 1
		and: [aSLMethodTestObject cleanSource lineCount <= 1])
		and: [method methodClass allInstVarNames withIndexDo: [ :ea :index |
				(method writesField: index) ifTrue: [^ true]]. 
			false]