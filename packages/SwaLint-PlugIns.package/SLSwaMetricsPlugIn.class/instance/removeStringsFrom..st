private
removeStringsFrom: aCodeString

| opening copiedString |

opening := false.
copiedString := ''.

aCodeString do: [ :each | 
	(opening = false) ifTrue: [
		(each = '''' asCharacter) ifTrue: [
			opening := true.
			]
		ifFalse: [
			copiedString := copiedString, each.
			]
		]
	ifFalse: [
		(each =  '''' asCharacter) ifTrue: [
			opening := false.
			]
		].
	].
	
	^ copiedString