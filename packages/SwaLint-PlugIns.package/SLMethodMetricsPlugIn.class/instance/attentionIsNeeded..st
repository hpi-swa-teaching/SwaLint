private
attentionIsNeeded: aSLMethodTestObject

	| method |
	method := aSLMethodTestObject testObject.
	^ 	method hasBreakpoint or:
		[(method literals intersection: 
			#(halt halt: haltIfNil haltIf: haltOnce haltOnce: haltOnCount:
				halt:onCount: break flag: needsWork notYetImplemented)) notEmpty]
			or: [method hasReportableSlip]