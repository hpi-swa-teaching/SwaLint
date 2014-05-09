private
nodeCYCLO: aNode
	"Check statements for containing ifs etc. If necessary, recursively 
	traverse the tree to find more."
	
	| cyclo statements |
	(aNode isMethod or: [aNode isBlock]) ifFalse: [^ 0].
	
	cyclo := 0.	
	statements := aNode body statements.
	
	statements do: [ :node | node isMessage ifTrue: [
			((self class ifAndSimilar) includes: (node selector)) ifTrue: [
				cyclo := cyclo + 1.
				node arguments do: [ :anotherMethodNode | 
					cyclo := cyclo + (self nodeCYCLO: anotherMethodNode).]				
				]]].
	^ cyclo