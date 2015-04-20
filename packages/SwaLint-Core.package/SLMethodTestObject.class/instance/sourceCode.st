accessing
sourceCode
	"Answer the source code of the method as text. If 
	meta-programming was used to create the method 
	the source code might not be avialiable"

	^ sourceCode ifNil: [
		sourceCode := self methodSelector ifNotNil: [ 
			(self testObject methodClass)
				sourceCodeAt: self methodSelector]]