accessing
cleanSource
	"Answer source code without method name, comments and empty lines"
	
	^ cleanSource ifNil: [cleanSource := self buildCleanSource]