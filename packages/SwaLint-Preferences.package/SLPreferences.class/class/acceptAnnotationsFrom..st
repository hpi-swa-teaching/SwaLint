parameters
acceptAnnotationsFrom: aSystemWindow
	"This intricate extraction is based on the precise structure of the annotation-request window.  Kindly avert your eyes."
	| aList |
	aList := aSystemWindow paneMorphs first firstSubmorph submorphs collect:
		[:m |  m contents asSymbol].
	self defaultAnnotationRequests: aList
	