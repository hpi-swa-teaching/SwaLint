private
evilMethods

	^ ({ #isKindOf: . #sendTo: . #respondsTo: . #inheritsFrom: . #thisContext .
		#instVarAt: . #instVarNamed: . #instVarAt:put: . #instVarNamed:put: . 
		#perform: . #executeMethod: . #subclasses . #allSubclasses }
		asOrderedCollection 
			addAll: (Object organization listAtCategoryNamed: 'message handling');
			yourself)