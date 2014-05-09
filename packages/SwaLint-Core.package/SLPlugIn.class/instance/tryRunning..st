test running
tryRunning: aBlock
	"Catch SLWrongTypeErrors and return 
	SLNoResult instead"

	^ aBlock 
		on: SLWrongTypeError 
		do: [ :err | self noResultFrom: err]