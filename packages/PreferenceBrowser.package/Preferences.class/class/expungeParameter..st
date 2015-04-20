parameters
expungeParameter: aKey
	"If Parameters holds an entry under the given key, remove the entry.  No senders in the current system, but called from the postscript of the change-set that defines it, and potentially useful otherwise."

	Parameters removeKey: aKey ifAbsent: []