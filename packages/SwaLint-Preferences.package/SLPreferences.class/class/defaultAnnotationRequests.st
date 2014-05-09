parameters
defaultAnnotationRequests
	^ Parameters at: #MethodAnnotations ifAbsent:
		[self setDefaultAnnotationInfo]
	"Preferences annotationInfo"