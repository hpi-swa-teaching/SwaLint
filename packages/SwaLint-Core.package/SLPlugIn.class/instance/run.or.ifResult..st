test running
run: block1 or: block2 ifResult: block3
	"If block1 or block2 answers a result, run block3"

	self ifResult: block1 value do: block3.
	self ifResult: block2 value do: block3.	