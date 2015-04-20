parameters
parameterAt: aKey default: defaultValueBlock
	"Deprecated interface; no surviving senders in the released image, but clients probably still use"

	^ self parameterAt: aKey ifAbsentPut: defaultValueBlock