parameters
parameterAt: aKey ifAbsentPut: defaultValueBlock
	"Return the Parameter setting at the given key.  If there is no entry for this key in the Parameters dictionary, create one with the value of defaultValueBlock as its value"

	^ Parameters at: aKey ifAbsentPut: defaultValueBlock