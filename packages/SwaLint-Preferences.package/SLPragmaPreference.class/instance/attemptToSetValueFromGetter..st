value
attemptToSetValueFromGetter: aValue
	"Attempt to set the value of the preference from the getter method, answering if the attempt was successful.
	 Do so by seeing if the method is of the form
		^ClassVar ifNil: [...]
	 by analysing its bytecode, and if so, extracting the class (or global) var and setting its value."
	| getterMethod getterBytecodes getterBytecodeNames
	  constant comparison branchTuple distance followingpc
	  classVar |
	getterMethod := provider class compiledMethodAt: getter ifAbsent: [^false].
	getterBytecodes := getterMethod abstractBytecodeMessagesAndPCs.
	getterBytecodeNames := getterBytecodes collect: [:tuple| tuple first selector].
	((getterBytecodeNames beginsWith: #(pushLiteralVariable: doDup #pushConstant: send:super:numArgs: jump:if:))
	 and: [getterBytecodeNames last == #methodReturnTop
	 and: [(constant := getterBytecodes third first) arguments first == nil
	 and: [(comparison := getterBytecodes fourth first) arguments first == #==
	 and: [branchTuple := getterBytecodes fifth.
			followingpc := getterBytecodes sixth last.
			distance := branchTuple first arguments first.
			"i.e. does the branch jump to the return?"
			distance + followingpc = getterBytecodes last second]]]]) ifFalse:
		[^false].
	classVar := getterBytecodes first first arguments first.
	classVar value: aValue.
	^true