test-data
ifAndSimilar
	"Variatons of if-statements and loops."
	^ {
		'ifTrue:'. 'ifFalse:'. 'ifTrue:ifFalse:'. 'ifFalse:ifTrue:'.
		'ifNil:'. 'ifNotNil:'. 'ifNil:ifNotNil:'. 'ifNotNil:ifNil:'.
		'ifEmpty:'. 'ifNotEmpty:'. 'ifEmpty:ifNotEmpty:'. 'ifNotEmpty:ifEmpty:'.
		'at:ifAbsent:'. 'at:ifAbsentPut:'. 'detect:ifNone:'. 'on:do:'. 'and:'. 'or:'. 'xor:'.
		'whileTrue:'. 'whileTrue'. 'whileFalse'. 'whileFalse:'.
          'timesRepeat:'. 'to:do:'.
          'do:separatedBy:'. 'do:'. 'collect:'. 'select:'. 'reject:'. 'inject:into:'.
          'detect:'. 'anySatisfy:'. 'allSatisfy:'. 'piecesCutWhere:'.
	}