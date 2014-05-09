parameters
annotationEditingWindow
	"Answer a window affording editing of annotations"
	| aPanel ins outs current aMorph aWindow aButton info pair standardHeight standardWidth |
	standardHeight := 180.
	standardWidth := (2 sqrt reciprocal * standardHeight) rounded.
	Smalltalk isMorphic
		ifFalse: [self error: 'annotations can be edited only in morphic'].
	aPanel := AlignmentMorph newRow extent: 2 * standardWidth @ standardHeight.
	ins := AlignmentMorph newColumn extent: standardWidth @ standardHeight.
	ins color: Color green muchLighter.
	ins enableDrop: true;
		 beSticky.
	outs := AlignmentMorph newColumn extent: standardWidth @ standardHeight.
	outs color: Color red muchLighter.
	outs enableDrop: true;
		 beSticky.
	aPanel addMorph: outs;
		 addMorphFront: ins.
	outs position: ins position + (standardWidth @ 0).
	current := self defaultAnnotationRequests.
	info := self annotationInfo.
	current
		do: [:sym | 
			pair := info
						detect: [:aPair | aPair first == sym].
			aMorph := StringMorph new contents: pair first.
			aMorph setBalloonText: pair last.
			aMorph enableDrag: true.
			aMorph
				on: #startDrag
				send: #startDrag:with:
				to: aMorph.
			ins addMorphBack: aMorph].
	info
		do: [:aPair | (current includes: aPair first)
				ifFalse: [aMorph := StringMorph new contents: aPair first.
					aMorph setBalloonText: aPair last.
					aMorph enableDrag: true.
					aMorph
						on: #startDrag
						send: #startDrag:with:
						to: aMorph.
					outs addMorph: aMorph]].
	aPanel layoutChanged.
	aWindow := SystemWindowWithButton new setLabel: 'Annotations'.
	aButton := SimpleButtonMorph new target: Preferences;
				 actionSelector: #acceptAnnotationsFrom:;
				
				arguments: (Array with: aWindow);
				 label: 'apply';
				 borderWidth: 0;
				 borderColor: Color transparent;
				 color: Color transparent.
	aButton submorphs first color: Color blue.
	aButton setBalloonText: 'After moving all the annotations you want to the left (green) side, and all the ones you do NOT want to the right (pink) side, hit this "apply" button to have your choices take effect.'.
	aWindow buttonInTitle: aButton;
		 adjustExtraButton.
	^ aPanel wrappedInWindow: aWindow"Preferences annotationEditingWindow openInHand"