selections
anyBrowsableSelected

	^ selection associations anySatisfy: [ :association |
		association value and:
			[(list at: association key) hasDetails]]