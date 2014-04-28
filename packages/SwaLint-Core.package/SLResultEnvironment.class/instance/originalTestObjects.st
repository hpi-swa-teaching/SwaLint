accessing
originalTestObjects
	
	^ self systemClasses values 
			inject: OrderedCollection new
			into: [ :collection :objects |
				collection 
					addAll: objects;
					yourself]